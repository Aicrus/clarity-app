import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

// Flag global para prevenir múltiplas tentativas simultâneas
bool _facebookLoginInProgress = false;

/// Gera um nonce criptograficamente seguro para Limited Login
String generateNonce([int length = 32]) {
  const charset =
      '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
  final random = Random.secure();
  return List.generate(length, (_) => charset[random.nextInt(charset.length)])
      .join();
}

/// Retorna o hash SHA256 de uma string
String sha256ofString(String input) {
  final bytes = utf8.encode(input);
  final digest = sha256.convert(bytes);
  return digest.toString();
}

Future<UserCredential> facebookSignIn() async {
  if (kIsWeb) {
    FacebookAuthProvider facebookProvider = FacebookAuthProvider();
    facebookProvider.addScope('email');
    facebookProvider.setCustomParameters({'display': 'popup'});
    return await FirebaseAuth.instance.signInWithPopup(facebookProvider);
  }

  // PROTEÇÃO ANTI-LOOP: Previne múltiplas tentativas simultâneas
  if (_facebookLoginInProgress) {
    throw FirebaseAuthException(
      code: 'login-in-progress',
      message: 'Login do Facebook já em andamento',
    );
  }

  try {
    _facebookLoginInProgress = true;

    // ═══════════════════════════════════════════════════════════════════════
    // IMPORTANTE: Comportamento Oficial do Facebook Login (2024+)
    // ═══════════════════════════════════════════════════════════════════════
    // 
    // 📱 ANDROID: Abre o app nativo do Facebook (se instalado)
    //    - LoginBehavior.nativeWithFallback funciona perfeitamente
    // 
    // 🍎 iOS: SEMPRE usa navegador seguro (ASWebAuthenticationSession/SFSafariViewController)
    //    - Facebook removeu o suporte para app nativo no iOS desde SDK v6.0+ (2020)
    //    - Motivo: Requisitos de privacidade da Apple (iOS 14+ ATT)
    //    - Comportamento oficial usado por Instagram, WhatsApp, Twitter, etc.
    //    - NÃO É UM BUG - é o método mandatório da Apple e Facebook
    // 
    // LoginTracking.enabled: Usa login clássico (token completo para Graph API)
    // LoginTracking.limited: Login limitado (token JWT, sem Graph API)
    // ═══════════════════════════════════════════════════════════════════════

    final loginBehavior = LoginBehavior.nativeWithFallback;
    
    // IMPORTANTE: Para iOS, usar Limited Login com nonce para compatibilidade com Firebase
    final bool isIOS = defaultTargetPlatform == TargetPlatform.iOS;
    final loginTracking = isIOS ? LoginTracking.limited : LoginTracking.enabled;
    
    // Gera nonce para iOS Limited Login
    String? rawNonce;
    String? hashedNonce;
    if (isIOS) {
      rawNonce = generateNonce();
      hashedNonce = sha256ofString(rawNonce);
    }

    print('🔵 Facebook Login: Platform=${isIOS ? "iOS" : "Android"} tracking=$loginTracking');
    
    final LoginResult loginResult = await FacebookAuth.instance.login(
      permissions: ['public_profile', 'email'],
      loginBehavior: loginBehavior,
      loginTracking: loginTracking,
      nonce: hashedNonce, // Passa nonce apenas no iOS
    );
    
    print('🔵 Login Status: ${loginResult.status}');

    // Se foi cancelado, retorna erro claro
    if (loginResult.status == LoginStatus.cancelled) {
      throw FirebaseAuthException(
        code: 'login-cancelled',
        message: 'Login cancelado pelo usuário',
      );
    }

    // Se falhou, verifica a mensagem de erro para fornecer feedback mais específico
    if (loginResult.status == LoginStatus.failed) {
      final errorMessage = loginResult.message ?? 'Erro desconhecido no login do Facebook';
      
      // Verifica se o erro é relacionado à implementação/configuração
      if (errorMessage.contains("can't use Facebook to log into this app") ||
          errorMessage.contains("issue with its implementation")) {
        throw FirebaseAuthException(
          code: 'facebook-config-error',
          message: 'Erro de configuração do Facebook Login. Verifique as configurações do app no Facebook Developer Console.',
        );
      }
      
      throw FirebaseAuthException(
        code: 'facebook-login-failed',
        message: errorMessage,
      );
    }

    // Qualquer outro status diferente de sucesso
    if (loginResult.status != LoginStatus.success) {
      throw FirebaseAuthException(
        code: loginResult.status.name,
        message: loginResult.message ?? 'Erro no login do Facebook',
      );
    }

    final accessToken = loginResult.accessToken;
    if (accessToken == null) {
      throw FirebaseAuthException(
        code: 'no-access-token',
        message: 'Token de acesso não encontrado',
      );
    }

    // ═══════════════════════════════════════════════════════════════════════
    // IMPORTANTE: Limited Login (iOS) requer OAuthCredential com nonce
    // Classic Login (Android) usa FacebookAuthProvider padrão
    // ═══════════════════════════════════════════════════════════════════════
    
    OAuthCredential credential;
    
    if (accessToken.type == AccessTokenType.limited) {
      // Limited Login (iOS) - usa OAuthCredential com idToken e rawNonce
      print('🔵 Facebook: Limited Login (iOS) com nonce');
      
      if (rawNonce == null) {
        throw FirebaseAuthException(
          code: 'missing-nonce',
          message: 'Nonce ausente para Limited Login',
        );
      }
      
      // Para Limited Login, criar OAuthCredential manualmente com nonce
      credential = OAuthCredential(
        providerId: 'facebook.com',
        signInMethod: 'oauth',
        idToken: accessToken.tokenString,
        rawNonce: rawNonce,
      );
    } else {
      // Classic Login (Android) - usa FacebookAuthProvider padrão
      print('🔵 Facebook: Classic Login (Android)');
      credential = FacebookAuthProvider.credential(accessToken.tokenString);
    }
    
    print('🔵 Tentando autenticar no Firebase...');

    // Autentica no Firebase com a credencial apropriada
    try {
      final userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      print('🔵 ✅ Autenticação no Firebase bem-sucedida!');
      return userCredential;
    } on FirebaseAuthException catch (e) {
      print('🔵 ❌ Erro na autenticação Firebase: ${e.code} - ${e.message}');
      // Re-lança o erro para ser tratado pelo gerenciador de autenticação
      rethrow;
    }
  } finally {
    // SEMPRE libera o flag, mesmo em caso de erro
    _facebookLoginInProgress = false;
  }
}

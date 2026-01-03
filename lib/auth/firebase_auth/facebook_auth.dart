import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'dart:io' show Platform;

// Flag global para prevenir múltiplas tentativas simultâneas
bool _facebookLoginInProgress = false;

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

    // FORÇA comportamento nativo APENAS - sem fallback para web/chrome
    final LoginResult loginResult = await FacebookAuth.instance.login(
      permissions: ['public_profile', 'email'],
      loginBehavior: Platform.isAndroid 
          ? LoginBehavior.nativeOnly  // Android: APENAS app nativo
          : LoginBehavior.nativeWithFallback,  // iOS: app nativo com fallback
    );

    // Se foi cancelado, retorna erro claro
    if (loginResult.status == LoginStatus.cancelled) {
      throw FirebaseAuthException(
        code: 'login-cancelled',
        message: 'Login cancelado pelo usuário',
      );
    }

    // Se falhou no nativeOnly (app não instalado), mostra erro
    if (loginResult.status == LoginStatus.failed) {
      throw FirebaseAuthException(
        code: 'facebook-app-not-found',
        message: 'Por favor, instale o aplicativo Facebook para continuar',
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

    // Cria credencial e autentica no Firebase
    final credential = FacebookAuthProvider.credential(accessToken.tokenString);
    return await FirebaseAuth.instance.signInWithCredential(credential);
  } finally {
    // SEMPRE libera o flag, mesmo em caso de erro
    _facebookLoginInProgress = false;
  }
}

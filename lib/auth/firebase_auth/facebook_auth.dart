import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

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

    // Usa nativeWithFallback para permitir fallback quando necessário
    // Isso resolve problemas com Activity Result APIs e configurações do Facebook
    final LoginResult loginResult = await FacebookAuth.instance.login(
      permissions: ['public_profile', 'email'],
      loginBehavior: LoginBehavior.nativeWithFallback,  // Permite fallback para web se nativo falhar
    );

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

    // Cria credencial e autentica no Firebase
    final credential = FacebookAuthProvider.credential(accessToken.tokenString);
    return await FirebaseAuth.instance.signInWithCredential(credential);
  } finally {
    // SEMPRE libera o flag, mesmo em caso de erro
    _facebookLoginInProgress = false;
  }
}

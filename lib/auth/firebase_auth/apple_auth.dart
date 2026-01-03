import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

/// Generates a cryptographically secure random nonce, to be included in a
/// credential request.
String generateNonce([int length = 32]) {
  const charset =
      '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
  final random = Random.secure();
  return List.generate(length, (_) => charset[random.nextInt(charset.length)])
      .join();
}

/// Returns the sha256 hash of [input] in hex notation.
String sha256ofString(String input) {
  final bytes = utf8.encode(input);
  final digest = sha256.convert(bytes);
  return digest.toString();
}

/// Vérifie si Apple Sign-In est disponible sur cet appareil
Future<bool> isAppleSignInAvailable() async {
  try {
    if (kIsWeb) {
      // Sur le web, Apple Sign-In est toujours disponible
      return true;
    }
    // Sur iOS, vérifier la disponibilité
    return await SignInWithApple.isAvailable();
  } catch (e) {
    // En cas d'erreur, considérer comme non disponible
    return false;
  }
}

Future<UserCredential> appleSignIn() async {
  try {
    if (kIsWeb) {
      final provider = OAuthProvider("apple.com")
        ..addScope('email')
        ..addScope('name');

      // Sign in the user with Firebase.
      return await FirebaseAuth.instance.signInWithPopup(provider);
    }
    
    // Vérifier la disponibilité d'Apple Sign-In avant de continuer
    final isAvailable = await isAppleSignInAvailable();
    if (!isAvailable) {
      throw FirebaseAuthException(
        code: 'apple-signin-unavailable',
        message: 'Apple Sign-In n\'est pas disponible sur cet appareil.',
      );
    }
    
    // To prevent replay attacks with the credential returned from Apple, we
    // include a nonce in the credential request. When signing in in with
    // Firebase, the nonce in the id token returned by Apple, is expected to
    // match the sha256 hash of `rawNonce`.
    final rawNonce = generateNonce();
    final nonce = sha256ofString(rawNonce);

    // Request credential for the currently signed in Apple account.
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: nonce,
      // Ajout de la configuration pour le web
      webAuthenticationOptions: kIsWeb ? WebAuthenticationOptions(
        clientId: 'com.newmanspirit.clarity.service', // Service ID Apple configuré
        redirectUri: Uri.parse('https://clarity-878d9.firebaseapp.com/__/auth/handler'),
      ) : null,
    );

    // Vérification que le token d'identité n'est pas null
    if (appleCredential.identityToken == null) {
      throw FirebaseAuthException(
        code: 'missing-id-token',
        message: 'Le token d\'identité Apple est manquant.',
      );
    }

    // Le code d'autorisation est garanti non nul par l'API


    // Create an `OAuthCredential` from the credential returned by Apple.
    final oauthCredential = OAuthProvider("apple.com").credential(
      idToken: appleCredential.identityToken!,
      rawNonce: rawNonce,
      accessToken: appleCredential.authorizationCode, // CORRECTION CRUCIALE pour OAuth
    );

    // Sign in the user with Firebase. If the nonce we generated earlier does
    // not match the nonce in `appleCredential.identityToken`, sign in will fail.
    final user =
        await FirebaseAuth.instance.signInWithCredential(oauthCredential);

    final displayName = [appleCredential.givenName, appleCredential.familyName]
        .where((name) => name != null)
        .join(' ');

    // The display name does not automatically come with the user.
    if (displayName.isNotEmpty && user.user != null) {
      await user.user!.updateDisplayName(displayName);
    }

    return user;
  } on SignInWithAppleAuthorizationException catch (e) {
    // Gestion spécifique des erreurs Apple Sign-In
    switch (e.code) {
      case AuthorizationErrorCode.canceled:
        throw FirebaseAuthException(
          code: 'sign_in_canceled',
          message: 'La connexion avec Apple a été annulée.',
        );
      case AuthorizationErrorCode.failed:
        throw FirebaseAuthException(
          code: 'sign_in_failed',
          message: 'Échec de la connexion avec Apple. Veuillez réessayer.',
        );
      case AuthorizationErrorCode.invalidResponse:
        throw FirebaseAuthException(
          code: 'invalid_response',
          message: 'Réponse OAuth invalide d\'Apple. Vérifiez votre configuration.',
        );
      case AuthorizationErrorCode.notHandled:
        throw FirebaseAuthException(
          code: 'not_handled',
          message: 'La demande de connexion Apple n\'a pas été traitée.',
        );
      case AuthorizationErrorCode.unknown:
      default:
        throw FirebaseAuthException(
          code: 'unknown_error',
          message: 'Erreur inconnue lors de la connexion avec Apple: ${e.message}',
        );
    }
  } on FirebaseAuthException {
    // Re-lancer les erreurs Firebase existantes
    rethrow;
  } catch (e) {
    // Gestion des autres erreurs
    throw FirebaseAuthException(
      code: 'unknown_error',
      message: 'Erreur lors de la connexion avec Apple: ${e.toString()}',
    );
  }
}

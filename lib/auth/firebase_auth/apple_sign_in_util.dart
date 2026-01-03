import 'package:flutter/foundation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

/// Utilitaire pour vérifier la disponibilité d'Apple Sign-In
class AppleSignInUtil {
  static bool? _isAvailable;

  /// Vérifie si Apple Sign-In est disponible sur cet appareil
  static Future<bool> isAvailable() async {
    // Cache le résultat pour éviter les appels répétés
    if (_isAvailable != null) {
      return _isAvailable!;
    }

    try {
      if (kIsWeb) {
        // Sur le web, Apple Sign-In est disponible
        _isAvailable = true;
        return true;
      }
      
      // Sur iOS/Android, vérifier la disponibilité
      _isAvailable = await SignInWithApple.isAvailable();
      return _isAvailable!;
    } catch (e) {
      // En cas d'erreur, considérer comme non disponible
      _isAvailable = false;
      return false;
    }
  }

  /// Reset le cache (utile pour les tests)
  static void resetCache() {
    _isAvailable = null;
  }

  /// Retourne true si on est sur iOS (Apple Sign-In natif disponible)
  static bool get isIOS => defaultTargetPlatform == TargetPlatform.iOS;

  /// Retourne true si on est sur Android
  static bool get isAndroid => defaultTargetPlatform == TargetPlatform.android;
}

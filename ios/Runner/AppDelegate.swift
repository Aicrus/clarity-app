import UIKit
import Flutter
import FBSDKCoreKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    // Configurar Facebook SDK ANTES de inicializar
    // IMPORTANTE: isAutoLogAppEventsEnabled pode ser false para privacidade
    // MAS isAdvertiserTrackingEnabled precisa estar true para:
    // 1. Login nativo funcionar corretamente
    // 2. Melhorar qualidade de analytics e publicidade
    // 3. Alinhar com FacebookAdvertiserIDCollectionEnabled no Info.plist
    // (o SDK força limited login se estiver false, causando WebView)
    Settings.shared.isAutoLogAppEventsEnabled = false
    Settings.shared.isAdvertiserTrackingEnabled = true  // NECESSÁRIO para login e analytics
    
    // Inicializar Facebook SDK - CRÍTICO para login funcionar no iOS
    ApplicationDelegate.shared.application(
      application,
      didFinishLaunchingWithOptions: launchOptions
    )
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
  
  // Gerenciar URLs de retorno para Facebook Login e Apple Sign-In
  override func application(
    _ app: UIApplication,
    open url: URL,
    options: [UIApplication.OpenURLOptionsKey : Any] = [:]
  ) -> Bool {
    // Primeiro, tenta processar com Facebook SDK
    if ApplicationDelegate.shared.application(app, open: url, options: options) {
      return true
    }
    
    // Se não for Facebook, processa normalmente (inclui Apple Sign-In)
    return super.application(app, open: url, options: options)
  }
}

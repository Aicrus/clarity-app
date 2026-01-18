import 'package:clarity/backend/backend.dart';
import 'package:flutter/scheduler.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'backend/push_notifications/push_notifications_util.dart';
import 'backend/firebase/firebase_config.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'flutter_flow/revenue_cat_util.dart' as revenue_cat;

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    usePathUrlStrategy();
    
    print('🚀 Initialisation de Firebase...');
    await initFirebase();
    print('✅ Firebase initialisé');

    // Start initial custom actions code
    print('🔄 Exécution des actions personnalisées...');
    await actions.blockPaysage();
    print('✅ Actions personnalisées terminées');
    // End initial custom actions code

    print('🎨 Initialisation du thème...');
    await FlutterFlowTheme.initialize();
    print('✅ Thème initialisé');

    print('📱 Initialisation de l\'état de l\'app...');
    final appState = FFAppState(); // Initialize FFAppState
    await appState.initializePersistedState();
    print('✅ État de l\'app initialisé');

    // RevenueCat será inicializado após runApp() para não bloquear o início
    // Isso permite que o Dart VM Service seja descoberto mais rapidamente

    runApp(ChangeNotifierProvider(
      create: (context) => appState,
      child: const MyApp(),
    ));
  } catch (e, stackTrace) {
    print('❌ Erreur lors de l\'initialisation: $e');
    print('📋 Stack trace: $stackTrace');
    
    // Lancer l'app avec une page d'erreur simple
    runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error_outline,
                size: 64,
                color: Colors.red,
              ),
              const SizedBox(height: 16),
              const Text(
                'Erreur d\'initialisation',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'Détails: $e',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Relancer l'app
                  main();
                },
                child: const Text('Réessayer'),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  late Stream<BaseAuthUser> userStream;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  final authUserSub = authenticatedUserStream.listen(
    (user) async {
      try {
        await revenue_cat.login(user?.uid);
        
        if(user != null) { 
          print('👤 Utilisateur connecté: ${user.uid}');
          print('💰 Entitlements: ${revenue_cat.activeEntitlementIds}');
          
          if (currentUserReference != null) {
            await currentUserReference!.update(createUsersRecordData(
              isPremium: revenue_cat.activeEntitlementIds.isNotEmpty,
            ));
          }
        }
      } catch (e) {
        print('⚠️ Erreur dans authUserSub: $e');
      }
    },
    onError: (error) {
      print('❌ Erreur dans le stream d\'authentification: $error');
    },
  );
  final fcmTokenSub = fcmTokenUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();

    try {
      _appStateNotifier = AppStateNotifier.instance;
      _router = createRouter(_appStateNotifier);
      
      // Inicializar usuário imediatamente para evitar loading infinito
      final currentAuthUser = FirebaseAuth.instance.currentUser;
      final initialUser = ClarityFirebaseUser.fromFirebaseUser(currentAuthUser);
      
      // Desabilitar splash image para permitir navegação
      _appStateNotifier.stopShowingSplashImage();
      _appStateNotifier.update(initialUser);
      
      userStream = clarityFirebaseUserStream()
        ..listen(
          (user) {
            _appStateNotifier.update(user);
          },
          onError: (error) {
            print('❌ Erreur dans le stream utilisateur: $error');
          },
        );
      
      jwtTokenStream.listen(
        (_) {},
        onError: (error) {
          print('❌ Erreur dans le JWT token stream: $error');
        },
      );

      // Inicializar RevenueCat de forma assíncrona após o primeiro frame
      // Isso não bloqueia o início do app e permite que o Dart VM Service seja descoberto
      SchedulerBinding.instance.addPostFrameCallback((_) async {
        try {
          print('💰 Initialisation de RevenueCat (après le premier frame)...');
          await revenue_cat.initialize(
            "appl_PeLkvealipwYlUprpYoMufMBTRF",
            "goog_FTlNSkdNJmlXlGfyOfCUOHkVFyU",
            debugLogEnabled: true,
            loadDataAfterLaunch: false,
          );
          print('✅ RevenueCat initialisé');
        } catch (e, stackTrace) {
          print('⚠️ Erreur RevenueCat (continuons sans): $e');
          print('📋 Stack trace RevenueCat: $stackTrace');
        }
      });

      SchedulerBinding.instance.addPostFrameCallback((_) async {
        try {
          if (currentUserReference != null) {
            await currentUserReference!.update({
              ...mapToFirestore(
                {
                  'howManyOpen': FieldValue.increment(1),
                },
              ),
            });
            print('✅ Compteur d\'ouvertures mis à jour');
          }
        } catch (e) {
          print('⚠️ Erreur lors de la mise à jour du compteur: $e');
        }
      });
      
    } catch (e, stackTrace) {
      print('❌ Erreur lors de l\'initialisation de MyApp: $e');
      print('📋 Stack trace: $stackTrace');
    }
  }

  @override
  void dispose() {
    authUserSub.cancel();
    fcmTokenSub.cancel();
    super.dispose();
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Clarity',
      localizationsDelegates: const [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('it'),
      ],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}

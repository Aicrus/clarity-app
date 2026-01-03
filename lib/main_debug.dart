import 'package:flutter/material.dart';

void main() {
  print('🚀 Démarrage de la version debug simple...');
  runApp(const DebugApp());
}

class DebugApp extends StatelessWidget {
  const DebugApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('🎯 Construction de DebugApp');
    return MaterialApp(
      title: 'Clarity Debug',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DebugHomePage(),
    );
  }
}

class DebugHomePage extends StatefulWidget {
  const DebugHomePage({super.key});

  @override
  State<DebugHomePage> createState() => _DebugHomePageState();
}

class _DebugHomePageState extends State<DebugHomePage> {
  String status = 'Initialisation...';
  
  @override
  void initState() {
    super.initState();
    print('🏠 Initialisation de DebugHomePage');
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    try {
      setState(() {
        status = 'Test 1: Interface de base - OK';
      });
      
      await Future.delayed(const Duration(seconds: 1));
      
      setState(() {
        status = 'Test 2: Délai - OK';
      });
      
      // Test Firebase
      try {
        print('🔥 Test d\'importation Firebase...');
        setState(() {
          status = 'Test 3: Test Firebase en cours...';
        });
        
        // Ici on testera Firebase progressivement
        setState(() {
          status = 'Test 3: Firebase - À tester';
        });
      } catch (e) {
        setState(() {
          status = 'Test 3: Erreur Firebase - $e';
        });
      }
      
    } catch (e) {
      setState(() {
        status = 'Erreur: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    print('🎨 Construction de l\'interface debug');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Clarity Debug'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.bug_report,
                size: 80,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              const Text(
                'Mode Debug Clarity',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                status,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  print('🔄 Bouton test appuyé');
                  setState(() {
                    status = 'Interface réactive - OK';
                  });
                },
                child: const Text('Test Interface'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

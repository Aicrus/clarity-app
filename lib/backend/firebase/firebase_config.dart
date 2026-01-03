import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDP1K0dFfr4ITaHOWJXGwuC0uazlahquQU",
            authDomain: "clarity-878d9.firebaseapp.com",
            projectId: "clarity-878d9",
            storageBucket: "clarity-878d9.appspot.com",
            messagingSenderId: "776412439914",
            appId: "1:776412439914:web:0cd07a660bf680fc67f113",
            measurementId: "G-KE4TKF5EEE"));
  } else {
    await Firebase.initializeApp();
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDC2NLOTnC-4OGcM5-iLj4M0PZ6Irh5m-0",
            authDomain: "spotcompliance-c266a.firebaseapp.com",
            projectId: "spotcompliance-c266a",
            storageBucket: "spotcompliance-c266a.firebasestorage.app",
            messagingSenderId: "714673877521",
            appId: "1:714673877521:web:eda75eda546e26d9fcf7b0",
            measurementId: "G-BL7MDWMPE5"));
  } else {
    await Firebase.initializeApp();
  }
}

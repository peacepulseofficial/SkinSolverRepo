import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA8A596hbLUWnIc7iC2JsqSqG5oW_R0zPg",
            authDomain: "acnesolver-184be.firebaseapp.com",
            projectId: "acnesolver-184be",
            storageBucket: "acnesolver-184be.appspot.com",
            messagingSenderId: "389794134080",
            appId: "1:389794134080:web:b90ac880bfd7957b2fc7a5",
            measurementId: "G-4FSK03GM2R"));
  } else {
    await Firebase.initializeApp();
  }
}

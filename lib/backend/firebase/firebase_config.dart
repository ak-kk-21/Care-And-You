import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA9RgR3TibIY4skuhZVutrFsro9yf3Beo8",
            authDomain: "yc22-50bc6.firebaseapp.com",
            projectId: "yc22-50bc6",
            storageBucket: "yc22-50bc6.appspot.com",
            messagingSenderId: "232880453118",
            appId: "1:232880453118:web:41882a7218f97450923caf"));
  } else {
    await Firebase.initializeApp();
  }
}

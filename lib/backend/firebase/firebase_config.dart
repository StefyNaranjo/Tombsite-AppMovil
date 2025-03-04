import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBbS_9HkSj9bLkd6Cag1mNx38apa5uN5Pg",
            authDomain: "tombsiteapp.firebaseapp.com",
            projectId: "tombsiteapp",
            storageBucket: "tombsiteapp.appspot.com",
            messagingSenderId: "475660216407",
            appId: "1:475660216407:web:904800858525bb750a9b12",
            measurementId: "G-40P3S8XJL2"));
  } else {
    await Firebase.initializeApp();
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA14OYX-CU8WdfcA7lUQ6GGwuMqTXRVIbY",
            authDomain: "robono-95a2d.firebaseapp.com",
            projectId: "robono-95a2d",
            storageBucket: "robono-95a2d.appspot.com",
            messagingSenderId: "26602014755",
            appId: "1:26602014755:web:4adb2f232a0deba0d28996",
            measurementId: "G-CMHZD8ET4V"));
  } else {
    await Firebase.initializeApp();
  }
}

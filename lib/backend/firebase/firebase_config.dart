import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAl8sAicKWJyj9dFFehwkPgirmpDZWDtiU",
            authDomain: "cuversedemo.firebaseapp.com",
            projectId: "cuversedemo",
            storageBucket: "cuversedemo.appspot.com",
            messagingSenderId: "700137195472",
            appId: "1:700137195472:web:d8d6270d0f9a19c9501bd5",
            measurementId: "G-XWLV9HG1JN"));
  } else {
    await Firebase.initializeApp();
  }
}

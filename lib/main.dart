import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';

import 'responsive_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    setPathUrlStrategy();
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyAud3sB-NKG5th34J3Eo7DxWg38BRAO3sE",
          authDomain: "budget-app-5ddf6.firebaseapp.com",
          projectId: "budget-app-5ddf6",
          storageBucket: "budget-app-5ddf6.appspot.com",
          messagingSenderId: "198711544380",
          appId: "1:198711544380:web:95571c15c419dc0dea1139",
          measurementId: "G-HJE26XPS32"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(useMaterial3: true),
      home: ResponsiveHandler(),
    );
  }
}

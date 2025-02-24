// main.dart
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:our_app/firebase_options.dart';
import 'package:our_app/splash_screen.dart';

void main ()async{
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


runApp(OurApp());  
}


class OurApp extends StatelessWidget {
  const OurApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "OurApp",
        
        home: SplashScreen(),
    );
  }
}
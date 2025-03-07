// main.dart
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:our_app/api/api.dart';
import 'package:our_app/firebase_options.dart';
// import 'package:our_app/model/sources_response.dart';
import 'package:our_app/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
   
   return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {

    return MaterialApp(
        title: "OurApp",
        
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
    );
  }
  );
} }
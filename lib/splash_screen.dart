// splash_screen.dart
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                   backgroundColor: Colors.white,
      appBar: AppBar(
                     title: Text("FilmKu",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16, color: Color(0xFF110E47),fontFamily: "Merriweather",),),
                     backgroundColor: Colors.white,
                     centerTitle: true,
      ),
      body: Column(
                 children: [
                            Text("Now Showing",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0xFF110E47),fontFamily: "Merriweather",),),
                            SizedBox(),
                            SizedBox(
                                   
                            ),
                            

        ],
      ),
    );
  }
}
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class DetailMovieScreen extends StatelessWidget {
  DetailMovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/Video.png",
                width: double.infinity, height: 250, fit: BoxFit.fill),

            Text(
              "kjiuhuh",
              style: TextStyle(color: Colors.amber),
            ),

            Column(
              mainAxisSize:
                  MainAxisSize.min, //عشان تكون على قد المحتويات مش الشاشه كلها
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_circle, size: 45, color: Colors.white),
                ),
                Text(
                  "Play Trailer",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),

            //back
            Positioned(
              top: 40,
              left: 10,
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),

            //more
            Positioned(
              top: 40,
              right: 10,
              child: Icon(Icons.more_horiz, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:our_app/widget/category_widget.dart';
import 'package:our_app/widget/movie_info_widget.dart';

class DetailMovieScreen extends StatelessWidget {
  DetailMovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/Video.png",
                  width: double.infinity, height: 250, fit: BoxFit.fill),

              Column(
                mainAxisSize: MainAxisSize
                    .min, //عشان تكون على قد المحتويات مش الشاشه كلها
                children: [
                  IconButton(
                    onPressed: () {},
                    icon:
                        Icon(Icons.play_circle, size: 45, color: Colors.white),
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
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.white),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Spiderman: No Way Home",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 18,
                          color: Color(0xffFFC319),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "9.1/10 IMDb",
                          style: TextStyle(
                            color: Color(0xff9C9C9C),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Wrap(
                      spacing: 16,
                      children: [
                        CategoryWidget(label: "ACTION"),
                        CategoryWidget(label: "ADVENTURE"),
                        CategoryWidget(label: "FANTASY"),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MovieInfoWidget(title: "Length", value: "2h 28min"),
                        MovieInfoWidget(title: "language", value: "English"),
                        MovieInfoWidget(title: "Rating", value: "PG-13"),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Description",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xff110E47),
                      ),
                    ),
                    Text(
                      "With Spider-Man's identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.",
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 12,
                        color: Color(0xff9C9C9C),
                      ),
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

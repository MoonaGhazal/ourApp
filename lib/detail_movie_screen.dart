import 'package:flutter/material.dart';

class DetailMovieScreen extends StatelessWidget {
  DetailMovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/Video.png",
                  width: double.infinity, height: 250, fit: BoxFit.fill),
              Positioned(
                top: 40,
                left: 10,
                child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ),
              Positioned(
                top: 40,
                right: 10,
                child: IconButton(
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ),
            ],
          ),
          Text(
            "Spiderman: No Way Home",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 8),
          Icon(
            Icons.star,
            color: Color(0xffFFC319),
            size: 30,
          ),
          SizedBox(height: 8),
          Icon(
            Icons.bookmark,
            color: Color(0xff202020),
            size: 30,
          ),
          Text(
            "9.1/10 IMDb",
            style: TextStyle(
                color: Color(0xff9C9C9C),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

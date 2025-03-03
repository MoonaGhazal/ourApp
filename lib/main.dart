import 'package:flutter/material.dart';
import 'package:our_app/detail_movie_screen.dart';

void main() {
  runApp(MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailMovieScreen(),
    );
  }
}

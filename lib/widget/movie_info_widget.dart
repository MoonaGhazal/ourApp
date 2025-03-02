import 'package:flutter/material.dart';

class MovieInfoWidget extends StatelessWidget {
  MovieInfoWidget({super.key, required this.title, required this.value});
  String title;
  String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color: Color(0xff9C9C9C),
          ),
        ),
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

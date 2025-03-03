// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CastWidget extends StatelessWidget {
  CastWidget({super.key, required this.name, required this.castImage});
  String name;
  String castImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            castImage,
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xff110E47),
          ),
        ),
      ],
    );
  }
}

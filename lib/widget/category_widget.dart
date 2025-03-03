// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key, required this.label});
  String label;

  @override
  Widget build(BuildContext context) {
    return Chip(
      
      label: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          color: Color(0xff88A4E8),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 2),
      
      backgroundColor: Color(0xffDBE3FF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}

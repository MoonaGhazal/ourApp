// widget/genre_container.dart
import 'package:flutter/material.dart';

class GenreContainer extends StatelessWidget {
    const  GenreContainer({super.key, required this.genreText});
    final String genreText ;
  @override
  Widget build(BuildContext context) {
    return Container(width: 61,height: 18,
            padding: EdgeInsets.only(top: 4,left: 12,right: 12,bottom: 4,),
            //background: #DBE3FF;
            //background: #88A4E8;
            decoration: BoxDecoration(color: Color(0xFFDBE3FF),borderRadius: BorderRadius.circular(10,)), 
            child:  Text(genreText ,style: TextStyle(fontSize: 8,color: Color(0xFF88A4E8), fontWeight: FontWeight.bold,fontFamily: "Muslim"),),
        );
   
    
  }
}
// widget/first_card.dart
import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
    const  FirstCard ({super.key,required this.title,required this.image,required this.rate,});
  final String title;
  final String image;
  final String starImage ="assets/Star.png";
  final String rate;

   
  
  @override
  Widget build(BuildContext context) {
      return SizedBox(width: 143,height: 265,
        child: Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    ClipRRect( borderRadius: BorderRadius.circular(5),
                      child: image.startsWith("http") ?
                      Image.network(image, fit: BoxFit.cover, errorBuilder:(context, error, stackTrace){return Text("Error");}):
                      Image.asset(image,height: 212,width: 143,fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 5,),
                    Text(title,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,fontFamily: "Mulish" ,color: Color(0xFF000000) ),overflow: TextOverflow.ellipsis,maxLines:2 ,),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Image.asset(starImage,width: 14,height: 14,),
                        SizedBox(width: 5,),
                        Text(rate,style: TextStyle(fontSize: 12,color: Color(0xFF9C9C9C)),maxLines: 1,overflow: TextOverflow.ellipsis,),
                      ],
                    ),
                   ]));                 
  }     
}
// widget/first_card.dart
import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
      FirstCard ({super.key,required this.title,required this.image,required this.rate,});
   String title;
   String image;
   String starImage ="assets/Star.png";
   String rate;
  
  @override
  Widget build(BuildContext context) {
      return SizedBox(height: 283,
        child: Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Image.asset(image,height: 212,width: 143,),
                    SizedBox(height: 5,),
                    Text(title,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,fontFamily: "Mulish" , ),overflow: TextOverflow.ellipsis,maxLines:2 ,),
                    SizedBox(height: 5,),
                Row(
                   children: [
                       Image.asset(starImage),
                       SizedBox(width: 5,),
                       Text(rate,style: TextStyle(fontSize: 12,color: Color(0xFF9C9C9C)),)
                   ],
                ),    
                   ],
                  
        
        ),
      );
  }     
}
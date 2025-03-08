// widget/second_card.dart
import 'package:flutter/material.dart';
import 'package:our_app/widget/genre_container.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({super.key,required this.title,required this.image,required this.rate,required this.genre, required this.hours});
  final String title;
  final String image;
  final String starImage ="assets/Star.png";
  final String rate;
  final String hoursImage ="assets/59252.png";
  final String hours;
  final List <String> genre;
  
   
  @override
  Widget build(BuildContext context) {
 
    return  SizedBox( width: double.infinity,
      child: Row(
             crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
              child:  Image.asset(image,height: 120,width: 85,fit: BoxFit.cover,),),
                      SizedBox(width:10, ),
                         Expanded(
                          child:
                            Column( 
                           crossAxisAlignment: CrossAxisAlignment.start,
                          
                            children: [
                              SizedBox(width: 117,
                                child: Text(title,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black,),maxLines: 2,overflow: TextOverflow.ellipsis,)),
                                                            
                                       SizedBox(height: 10,),
                                       Row(
                                        children: [
                                            Image.asset(starImage,width: 14,height: 14,),
                                            SizedBox(width: 5,),
                                            Text(rate,style: TextStyle(fontSize: 12,color: Color(0xFF9C9C9C)),maxLines: 1,overflow: TextOverflow.ellipsis,),
                                                   ], ),  
                                            SizedBox(height: 5,),  
                                            Wrap(
                                              spacing: 5,
                                               children: [
                                                  for(int i= 0 ; i< genre.length ; i++)
                                                   (GenreContainer(genreText: genre[i])),],
                                                        ),  
                                            SizedBox(height: 5,),    
                                             Row(
                                               children: [
                                                 Image.asset(hoursImage,width: 14,height: 14,),
                                                 SizedBox(width: 3,),
                                                 Text(hours,style: TextStyle(fontSize: 12,color: Color(0xFF000000)),maxLines: 1,overflow: TextOverflow.ellipsis,),
                                                                                                   //background: #000000;

                                               ],
                                             ),
                                                       
                                      ], 
                                        ) ) ]));
                            
  

   }
}


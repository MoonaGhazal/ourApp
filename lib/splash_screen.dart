// splash_screen.dart
import 'package:flutter/material.dart';
import 'package:our_app/widget/first_card.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});
  List<Movie>movieList =[
                 Movie(title: "Spiderman: No Way Home", image: "assets/image_1.png", rate: "9.1/10 IMDb"),
                 Movie(title: "Eternals", image: "assets/image_3.png", rate: "9.5/10 IMDb"),
                 Movie(title: "Shang-Chi", image: "assets/Poster.png", rate: "8.1/10 IMDb"),
                       ];
  List<Movie>movieListTwo =[
                 Movie(title: "Venom Let There Be Carnage", image: "assets/Image.png", rate: "6.4/10 IMDb"),
                 Movie(title: "The King’s Man", image: "assets/Image_5.png", rate: "8.4/10 IMDb"),

  ];                     
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                   backgroundColor: Colors.white,
                   
      appBar: AppBar(
                     title: Text("FilmKu",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16, color: Color(0xFF110E47),fontFamily: "Merriweather",),),
                     backgroundColor: Colors.white,
                     centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 15,),
        child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start ,
                   children: [
                              Text("Now Showing",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0xFF110E47),fontFamily: "Merriweather",),),
                              SizedBox(height: 10,),
                              SizedBox( height: 283,
                                child: ListView.builder( 
                                        scrollDirection: Axis.horizontal,
                                        itemCount: movieList.length,
                                        itemBuilder:(context,index){return FirstCard(title: movieList[index].title, image: movieList[index].image, rate: movieList[index].rate); }),
                              ), 
                              SizedBox(height: 4,),
                              Text("Popular",style: TextStyle(fontWeight:FontWeight.bold , fontSize:16,color: Color(0xFF110E47),fontFamily: "Merriweather", ),), 
                              SizedBox(height: 120,
                                child: ListView.builder(
                                        scrollDirection: Axis.vertical,
                                        itemCount: 10,
                                        itemBuilder: (context,index){return FirstCard(title: movieListTwo[index].title, image: movieListTwo[index].image, rate: movieListTwo[index].rate);}
                                        ,),
                                ),    
          ],
        ),
      ),
    );
  }
}

class Movie {
  String title;
  String image;
  String rate;
  Movie({required this.title,required this.image,required this.rate});
}




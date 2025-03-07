// splash_screen.dart
import 'package:flutter/material.dart';
import 'package:our_app/widget/first_card.dart';
import 'package:our_app/api/api.dart';
import 'package:our_app/model/sources_response.dart';
import 'package:our_app/widget/second_card.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<Results>movieList =[];
  List<String>movieNames =["Spider-Man: No Way Home","Eternals","Shang-Chi"];
  List<Movie>movieListTwo =[
                            Movie(title: "Venom Let There Be Carnage", image: "assets/Image.png", rate: "6.4/10 IMDb", hours: "1h 37m", genre: ["HORROR","MYSTERY","THRILLER"],),
                            Movie(title: "The King's Man", image: "assets/Image_5.png", rate: "8.4/10 IMDb", hours: "2h 11m",genre: ["ACTION","FANTASY"],),
  ];
  @override
     void initState() {
     super.initState();
     fetchMovies();
   }

    Future<void>fetchMovies()async{
      Api api = Api();
      List<Results> movies = await api.getMoviesByNames(movieNames);
                                           setState((){movieList = movies.where((movie) => movieNames.contains(movie.title)).toList();});
    }          

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                   backgroundColor: Colors.white,
                   
      appBar: AppBar(
                     title: Text("FilmKu",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16, color: Color(0xFF110E47),fontFamily: "Merriweather",),),
                     backgroundColor: Colors.white,

                     centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: 15,),
          child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start ,
                     children: [
                                Text("Now Showing",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0xFF110E47),fontFamily: "Merriweather",),),
                                SizedBox( height: 283,
                                  child: ListView.builder( 
                                          scrollDirection: Axis.horizontal,
                                          itemCount: movieList.length,
                                        padding: EdgeInsets.only(left: 3,),  
                                          itemBuilder:(context,index){return Padding(
                                            padding: const EdgeInsets.only(right: 12,),
                                            child: FirstCard(title: movieList[index].title ??"Error", image: movieList[index].image, rate:"${movieList[index].voteAverage}/10 IMDb",),
                                          ); }),
                                ), 
                                SizedBox(height: 10,),
                                Text("Popular",style: TextStyle(fontWeight:FontWeight.bold , fontSize:16,color: Color(0xFF110E47),fontFamily: "Merriweather", ),), 
                                SizedBox(height: 5,),
                                   ListView.builder(
                                      shrinkWrap: true,
                                      physics:NeverScrollableScrollPhysics(),
                                          scrollDirection: Axis.vertical,
                                          itemCount: movieListTwo.length,
                                          itemBuilder: (context,index){return SecondCard(title: movieListTwo[index].title, image: movieListTwo[index].image, rate: movieListTwo[index].rate,hours:movieListTwo[index].hours, genre: movieListTwo[index].genre,);}
                                          ,),
                                    
            ],
          ),
        ),
      ),
    );
  }
}



class Movie {
 String title;
 String image;
 String rate;
 String hours;
 String hoursImage = "assets/59252.png";
 List<String> genre;
 Movie({required this.title,required this.image,required this.rate,required this.hours,required this.genre,});


}


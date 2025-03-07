// api/api.dart
 import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:our_app/model/sources_response.dart';
 //API Key: 7dee7726bbcda065a0ef97b370738d6d
 //https://api.themoviedb.org/3/movie/550?api_key=7dee7726bbcda065a0ef97b370738d6d
 //https://api.themoviedb.org/3/movie/now_playing?api_key=7dee7726bbcda065a0ef97b370738d6d
 class Api {
  
 
   Future <List<Results>>  getMoviesByNames(List<String> movieNames)async {
      List<Results> movies = [];
       for (String movieName in movieNames){
      Uri url = Uri.https(
        'api.themoviedb.org',
        '/3/search/movie', 
        {
          'api_key': '7dee7726bbcda065a0ef97b370738d6d',
          'query': movieName, },
      );
      
      
    var response = await  http.get(url);
    String responseBody = response.body;
    Map<String,dynamic>json = jsonDecode(responseBody);
    List<dynamic> results = json["results"];
     for (var item in results) {
      movies.add(Results.fromJson(item)); }

           }
      return movies;
   }
   }
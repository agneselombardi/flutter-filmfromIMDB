import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'array_class.dart';
import 'movie_class.dart';


List<Movie> _movielist(String body) {

  return jsonDecode(body).cast<Map<String, dynamic>>().map<Movie>((json) => Movie.fromJson(json)).toList();
}


Future<ResultArray> getMovie() async {

  final response = await http.get(Uri.parse('https://api.themoviedb.org/3/discover/movie?api_key=62b9997577ec1e22899d54f20a51806e&language=it-IT&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate%27&append_to_response=images'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return ResultArray.fromJson(jsonDecode(response.body));
  }
  else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
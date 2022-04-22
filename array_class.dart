import 'movie_class.dart';
import 'movie_json.dart';

class ResultArray {
  int _page;
  final List _results;
  ResultArray(
      this._page,
      this._results,
      );
  getRes() => _results;
  factory ResultArray.fromJson(Map<String, dynamic> json) {
    return ResultArray(
      json['page'],
      json['results'].map((movie) => Movie.fromJson(movie)).toList(),
    );
  }

  int setPage(int pageNum) => _page = pageNum;
  int getPage() => _page;
  List<Movie> movies() {
    List<Movie> movies = [];
    for (int i = 0; i < _results.length; i++) {
      movies.add(_results[i]);
    }
    return movies;
    }
}
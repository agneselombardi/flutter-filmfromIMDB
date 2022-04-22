class Movie {
  final dynamic _vote_average;
  final int _id;
  final String _original_title;
  final String _poster_path;
  final String _overview;


  const Movie(
      this._vote_average,
      this._id,
      this._original_title,
      this._poster_path,
      this._overview,);

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
    json['vote_average'],
    json['id'],
    json['original_title'],
    json['poster_path'],
    json['overview'],
  );

  getVote() => _vote_average;
  getId() => _id;
  getTitle() => _original_title;
  getPath() => _poster_path;
  getOverview() => _overview;
}
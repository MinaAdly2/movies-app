class ApiConstants {
  static const baseUrl = "https://api.themoviedb.org/3";
  static const apiKey = "76e8e23dc591af13d2a4e329c309abed";

  static const nowPlayingMoviesPath =
      "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const popularMoviesPath = "$baseUrl/movie/popular?api_key=$apiKey";
  static const topRatedMoviesPath = "$baseUrl/movie/top_rated?api_key=$apiKey";
}

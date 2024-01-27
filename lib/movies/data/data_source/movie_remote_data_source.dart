import 'package:dio/dio.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/movies/data/models/movie_model.dart';

class MovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response =
        await Dio().get("https://api.themoviedb.org/3/movie/now_playing");

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List).map(
        (e) => MovieModel.fromJson(json: e),
      ));
    } else {
      throw ServerException(errorMessageModel: response.data);
    }
  }
}

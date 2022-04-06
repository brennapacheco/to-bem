import 'package:dio/dio.dart';
import 'package:to_bem/data/models/movies_model.dart';

class MoviesRepository {
  final endpoint = 'https://ghibliapi.herokuapp.com/films';
  Dio dio = Dio();

  Future<List<MoviesModel>> getMovies() async {
    try {
      final response = await dio.get(endpoint);
      final moviesJson = response.data as List;
      // ignore: unnecessary_lambdas
      final movies = moviesJson.map((e) => MoviesModel.fromJson(e)).toList();
      return movies;
    } on DioError {
      rethrow;
    }
  }
}

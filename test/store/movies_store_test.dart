import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:to_bem/data/models/movies_model.dart';
import 'package:to_bem/services/movies_repository.dart';

class MoviesRepositoryMock extends Mock implements MoviesRepository {}

void main() {
  group('Movie Page', () {
    late MoviesRepositoryMock moviesRepositoryMock;

    setUpAll(
      () {
        moviesRepositoryMock = MoviesRepositoryMock();
      },
    );
    test('should return a movies list', () async {
      when(() => moviesRepositoryMock.getMovies())
          .thenAnswer((_) async => MoviesModel());

      final moviesResponse = await moviesRepositoryMock.getMovies();

      expect(moviesResponse, isA<List<MoviesModel>>());
    });

  });
}

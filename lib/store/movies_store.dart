import 'dart:math';
import 'package:flutter/material.dart';
import 'package:to_bem/data/models/movies_model.dart';
import 'package:to_bem/services/movies_repository.dart';

class MoviesStore extends ValueNotifier {
  MoviesStore(this.moviesRepository) : super(0);

  MoviesRepository moviesRepository;

  Future<MoviesModel> getRandomMovie() async {
    final movies = await moviesRepository.getMovies();
    final index = Random().nextInt(movies.length);
    final randomMovie = movies[index];
    return randomMovie;
  }
}

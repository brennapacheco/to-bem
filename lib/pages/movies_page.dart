import 'package:flutter/material.dart';
import 'package:to_bem/base/injection.dart';
import 'package:to_bem/components/movie_card.dart';
import 'package:to_bem/components/patterns.dart';
import 'package:to_bem/data/models/movies_model.dart';
import 'package:to_bem/store/movies_store.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  final MoviesStore _moviesStore = getIt.get<MoviesStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          title('Filme do dia', ''),
          const SizedBox(height: 8),
          buildMoviesCard(),
        ],
      ),
    );
  }

  FutureBuilder<MoviesModel> buildMoviesCard() {
    return FutureBuilder<MoviesModel>(
      future: _moviesStore.getRandomMovie(),
      builder: (context, AsyncSnapshot<MoviesModel> snapshot) {
        final movies = snapshot.data;
        if (snapshot.hasData) {
          return MoviesCard(
            image: movies!.image.toString(),
            movieTitle: movies.title.toString(),
            description: movies.description.toString(),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

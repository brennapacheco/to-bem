import 'package:flutter/material.dart';

class MoviesCard extends StatefulWidget {
  MoviesCard({
    Key? key,
    required this.image,
    required this.movieTitle,
    required this.description,
  }) : super(key: key);

  String image;
  String movieTitle;
  String description;

  @override
  State<MoviesCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MoviesCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            widget.image,
            fit: BoxFit.contain,
            height: MediaQuery.of(context).size.height * 0.5,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          widget.movieTitle,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
          child: Text(
            widget.description,
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}

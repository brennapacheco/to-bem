import 'package:flutter/material.dart';
import 'package:to_bem/components/patterns.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({ Key? key }) : super(key: key);

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          title('Filme do dia', ''),

        ],
      ),
    );
  }
}

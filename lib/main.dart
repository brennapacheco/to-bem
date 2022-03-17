import 'package:flutter/material.dart';

import 'pages/activitites_page.dart';
import 'pages/login_page.dart';
import 'pages/sign_up_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tô bem',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      //TODO: Separar rotas em outro arquivo
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/activities': (context) => const ActivitiesPage(),
        /* '/addactivities': (context) => const AddActivitiesPage(),
        '/movies': (context) => const MoviesPage(),  */
      },
    );
  }
}

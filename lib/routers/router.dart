import 'package:flutter/material.dart';
import 'package:to_bem/constants.dart';
import 'package:to_bem/pages/activities_page.dart';
import 'package:to_bem/pages/home_page.dart';
import 'package:to_bem/pages/login_page.dart';
import 'package:to_bem/pages/movies_page.dart';
import 'package:to_bem/pages/retro_page.dart';
import 'package:to_bem/pages/sign_up_page.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case activitiesRoute:
        return MaterialPageRoute(builder: (_) => const ActivitiesPage());
      case moviesRoute:
        return MaterialPageRoute(builder: (_) => const MoviesPage());
      case retroRoute:
        return MaterialPageRoute(builder: (_) => const RetroPage());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

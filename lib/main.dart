import 'package:flutter/material.dart' hide Router;
import 'package:to_bem/base/constants.dart';
import 'package:to_bem/base/injection.dart';
import 'package:to_bem/routers/router.dart';

void main() {
  setup();
  runApp(const MyApp());
}

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
      onGenerateRoute: Router.generateRoute,
      initialRoute: loginRoute,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_program/pages/home.dart';
import 'package:login_program/pages/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/home":
            return MaterialPageRoute(builder: (context) => const Home());
          case "/login":
            return MaterialPageRoute(builder: (context) => const Login());
        }
      },
    );
  }
}

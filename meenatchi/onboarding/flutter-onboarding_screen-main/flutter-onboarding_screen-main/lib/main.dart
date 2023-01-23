import 'package:flutter/material.dart';
import 'package:onboarding_screen/home_screen.dart';
import 'package:onboarding_screen/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const IntroScreen(),
        "home": (context) => const HomeScreen(),
      },
    );
  }
}

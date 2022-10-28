import 'package:demo/login/signIn.dart';
import 'package:flutter/material.dart';
import 'package:demo/login/loginpage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
          primarySwatch: Colors.pink,
      ),
      home: const LoginPage(),
    );
  }
}




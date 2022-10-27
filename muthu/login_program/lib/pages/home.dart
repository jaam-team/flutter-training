import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _State();
}

class _State extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Image.network('https://picsum.photos/250?image=9'),
              ElevatedButton(
                  onPressed: _pushLogin, child: const Text("Go to Login")),
              Container(height: 10),
            ])));
  }

  void _pushLogin() {
    Navigator.of(context).pushNamed("/login");
  }
}

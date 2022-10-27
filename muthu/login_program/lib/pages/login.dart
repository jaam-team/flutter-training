import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Login")),
        body: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextFormField(
                autofocus: true,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter Username",
                ),
              ),
              TextFormField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter Password",
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: _pushHome, child: const Text("Go to Home")),
            ])));
  }

  void _pushHome() {
    Navigator.of(context).pushNamed("/home");
  }
}

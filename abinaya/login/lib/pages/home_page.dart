import 'package:flutter/material.dart';
import 'package:login/pages/login_page.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(167, 233, 236, 240),
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(

        child: Text("Home Page with Navigation"),
      ),
    );
  }
}



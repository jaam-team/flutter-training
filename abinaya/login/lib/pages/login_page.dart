

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:login/main.dart';
import 'package:login/pages/home_page.dart';

class login extends StatelessWidget{
  const login ({super.key});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(167, 233, 236, 240),
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(

        child: Column(
          children: <Widget>[
            const SizedBox(height:32),

            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top:100.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  hintText: 'Username'
                ),
              ),
              ),

             const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top:15.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Password'),
              ),
              ), 

          const SizedBox(
                height: 30.0,
              ),
      Container(
        height:50 ,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(20)),
        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => home())
            );
          },
          child: const Text('SignIn'),
        ),
      ),
      const SizedBox(
        height: 120,
      )
          ],
        ),
      ),
    );
  }
}



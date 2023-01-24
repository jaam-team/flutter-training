import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:myapp/homePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 169, 203),
      body: Center(
        child: SingleChildScrollView(
          
          child: Column(
            children: <Widget>[
            // const SizedBox(height: 30),
                Text("LoginPage" , style: TextStyle(color: Color.fromARGB(255, 13, 33, 68), fontSize: 40 )),
               
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.only( left: 15.0, right: 15.0,top:60.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
                const SizedBox(
                  height: 50.0,
                ),
              
              Container(
                
                height: 50,
                width: 250,                
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 20),),
                  style: ElevatedButton.styleFrom( backgroundColor: Colors.pink,
                   shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
        ),),
                ),
              ),
              SizedBox(
                height: 130,
              ),
             ],
          ),
        ),
      ),
    );
  }
}

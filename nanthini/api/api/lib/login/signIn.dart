import 'dart:js';

import 'package:flutter/material.dart';

import 'package:api/login/loginpage.dart';
class SignIn extends StatelessWidget{
  const SignIn({super.key });
@override
Widget build(BuildContext context)
{
  return Scaffold(
    body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: const [
      TextField(decoration:InputDecoration(labelText:"UserName")),
      TextField(decoration:InputDecoration(labelText: "Email")),
      TextField(decoration:InputDecoration(labelText: "Password")),
      TextField(decoration:InputDecoration(labelText: "Confirm Password")),
      
      // ElevatedButton( child: Text('Submit'),onPressed: (){
        
      // },
      //   //
       
      // )

    ],)
    )
  );
}
}
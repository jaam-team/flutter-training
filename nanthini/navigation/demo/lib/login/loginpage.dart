import 'package:demo/login/home.dart';
import 'package:demo/login/signIn.dart';
import 'package:flutter/material.dart';



class LoginPage extends StatelessWidget
{
const LoginPage({super.key});
@override
Widget build(BuildContext context)
{
  return SafeArea(
    child:Scaffold(
       body: Center(
        child:SizedBox(
          width: 300,
         child:Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Text( "Login",style:  TextStyle(fontSize: 20,),),
            Padding(padding: const EdgeInsets.all(14.0) ,
           child:  TextFormField(autofocus: true,
           decoration: const InputDecoration(labelText: "UserName",hintText: "Username"),
           )
            ),
            Padding(padding: const EdgeInsets.all(14.0) ,

           child:TextFormField(autofocus: true,decoration:const InputDecoration(labelText: "Password",hintText: "Password"),)),
            Padding(padding: const EdgeInsets.all(14.0) ,
          child:ElevatedButton(
           child: const Text('Login'),
           onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Home()));
           },
         )),])
       )))
       );
}
 
}
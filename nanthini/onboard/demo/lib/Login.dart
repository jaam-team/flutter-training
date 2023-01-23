import 'package:demo/OnBoard.dart';
import 'package:demo/home_page.dart';
import 'package:demo/main.dart';
import 'package:flutter/material.dart' ;
class Login extends StatelessWidget{
const Login({super.key});
@override
Widget build(BuildContext context)
{
  return SafeArea(
    child:Scaffold(
       body: Center(
        child:SizedBox(
          width: 400,
          height: 700,
         child:Column(mainAxisAlignment: MainAxisAlignment.center, verticalDirection: VerticalDirection.down ,children: [
          const Text( "Login",style: TextStyle(fontSize: 23,color: Colors.white,),),
            Padding(padding: const EdgeInsets.all(19.0) ,
           child:  TextFormField(autofocus: true,
           style: const TextStyle(color:Colors.white),
           decoration: const InputDecoration(labelText: "UserName",fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)), enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)), labelStyle: TextStyle(color:Colors.white),hintText: "Username"),
           validator:(value) {
              
            if(value==null)
            {
              return "Please Enter Some Value";
            }
            return null;},
           
           )
            ),
            Padding(padding: const EdgeInsets.all(19.0) ,

           child:TextFormField(autofocus: true,decoration:const InputDecoration(labelText: "Password", fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                labelStyle: TextStyle(color:Colors.white) ,hintText: "Password",),style: const TextStyle(color:Colors.white),)),
            Padding(padding: const EdgeInsets.all(14.0) ,
          child:ElevatedButton(
           child: const Text('Login'),
           onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Home()));
           },
         )),
       Padding(padding: const EdgeInsets.all(17.0),child:Align(alignment: Alignment.bottomCenter,child:ElevatedButton(onPressed: () {  },
       child: const Text("Create Account"),
       ),
       )  )])
       ))
       
       )
    //  child: Padding(padding: const EdgeInsets.all(14.0),child:Align(alignment: Alignment.bottomCenter,child:ElevatedButton(onPressed: () {  },
    //    child: const Text("Create Account"),
    //    ),
    //    )  ) 
        );
       
}
}
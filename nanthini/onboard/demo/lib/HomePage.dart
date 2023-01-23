
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});
 


  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Column(children: const [
        Padding(padding:EdgeInsets.all(14.0),child:Align(alignment: Alignment.topCenter, child: Text("Jaam Bank",style:TextStyle(color: Colors.white,fontSize: 17),),)),
        Padding(padding:EdgeInsets.all(22.0),child: Text("Save Your balance",style: TextStyle(color: Colors.white,fontSize:32,))),
      ],),
      );
  }}
  
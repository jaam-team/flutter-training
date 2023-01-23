import 'dart:convert';
import 'dart:async';
import 'package:login/pages/userdetails.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Sample extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(child: FutureBuilder<List<UserDetails>>(
        future:fetchAlbum(),
        builder:(context,snapshot){
          if(snapshot.hasData)
          {
            List<UserDetails>? data=snapshot.data;
        return ListView.builder(
          itemCount: data?.length,
        itemBuilder: (context, index) {
          return Card( color:Color.fromARGB(255, 206, 198, 240), child:ListTile(
        
        title: Text(' ${data?[index].email}' ),
        subtitle: Text('${data?[index].name}'),    
        
     onTap: () => {

         },
          ));
          
 } 
 ); 

          }
          else if(snapshot.hasError)
          {
return Text("${snapshot.error}");
          }
          return const CircularProgressIndicator();
        }

      )),
    );
  }
}
 Future<List<UserDetails>> fetchAlbum ()  async{
  final response= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
if(response.statusCode==200){
  List jsonstudent=json.decode(response.body);
   return jsonstudent.map((book) => UserDetails.fromJson(book)).toList();
  }
  else{
    throw Exception();
  }

}

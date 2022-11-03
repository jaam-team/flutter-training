import 'dart:convert';
import 'dart:async';
import 'package:api/student_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Apicall extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(child: FutureBuilder<List<StudentModel>>(
        future:fetchAlbum(),
        builder:(context,snapshot){
          if(snapshot.hasData)
          {
            List<StudentModel>? data=snapshot.data;
        return ListView.builder(
          itemCount: data?.length,
        itemBuilder: (context, index) {
          return Card( color:Color.fromARGB(255, 133, 218, 221), child:ListTile(

         title: Text(' ${data?[index].title},${data?[index].id}' ),
        subtitle: Text('${data?[index].author_id}'),    
        leading: Icon(Icons.book,color: Color.fromARGB(189, 30, 56, 206),),
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
 Future<List<StudentModel>> fetchAlbum ()  async{
  final response= await http.get(Uri.parse('https://my-json-server.typicode.com/dmitrijt9/book-api-mock/books'));
if(response.statusCode==200){
  List jsonstudent=json.decode(response.body);
   return jsonstudent.map((book) => StudentModel.fromJson(book)).toList();
  }
  else{
    throw Exception();
  }

}

         

 
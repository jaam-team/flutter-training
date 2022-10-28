import 'package:flutter/material.dart';
class Home extends StatelessWidget
{
  const Home({super.key});
  @override
Widget build(BuildContext context)
{
  return Scaffold(
    body: ListView(
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    const Text(style: TextStyle(fontSize: 22),"Demo"),
    Container(
      height: 100,
      color:const Color.fromARGB(255, 231, 137, 195),
      child: const Center(child: Text('Google')),
    ),
    Container(
      height: 100,
      color: const Color.fromARGB(255, 23, 134, 185),
      child: const Center(child: Text('Facebook')),
    ),
    Container(
      height: 100,
      color: Colors.amber[100],
      child: const Center(child: Text('Microsoft')),
    ),
  ],
)
  );
}
}
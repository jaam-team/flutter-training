import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  Color bgColor = Colors.purple;
  String pageTitle = 'Pandiyan';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: bgColor,
      child: Column(
        children: [
          Text(pageTitle, style: TextStyle(color: Colors.black)),
          ElevatedButton(
            onPressed: () {
              setState(() {
                bgColor = Colors.green;
                pageTitle = 'Flutter';
              });
            },
            child: const Text('Set Green Color'),
          ),
        ],
      ),
    );
  }
}

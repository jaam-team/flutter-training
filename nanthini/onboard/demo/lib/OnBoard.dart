import 'package:flutter/material.dart';

class OnBoard extends StatelessWidget {
 OnBoard({super.key});
  
  int index=0;
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
          
          actions:<Widget>[Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: const [Icon(
            Icons.menu,
            color: Colors.grey, 
            // child: Align(alignment: Alignment.centerLeft),
           )] ) ],
          title: Row(children:const[Text('Hi Suvellian!',style:TextStyle(color:Colors.black))]),

          backgroundColor: Colors.white,
        ),
        body: Center(
        child: SizedBox(
          height: 200, // card height
          child: PageView.builder(
            itemCount: 10,
            controller: PageController(viewportFraction: 0.7),
            // onPageChanged: (int index) => setState(() => _index = index),
            itemBuilder: (_, i) {
              return Transform.scale(
                scale: i == index ? 1 : 0.9,
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "Card ${i + 1}",
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      ),
    );
  }
}

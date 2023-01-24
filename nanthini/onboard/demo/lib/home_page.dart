import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:flutter_pay/flutter_pay.dart';
import 'package:awesome_card/awesome_card.dart';

class Home extends StatelessWidget {
  int index = 0;

  var isCvvFocused = "yes";
  Home({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.menu,
                    color: Colors.grey,
                  )
                ])
          ],
          title: Row(children: const [
            Text('Hi Suvellian!', style: TextStyle(color: Colors.black))
          ]),
          backgroundColor: Colors.white,
        ),
        body: ListView(children: [
          const SizedBox(
            height: 30,
          ),
          Container(
              height: 110,
              child: PageView.builder(
                  itemCount: 5,
                  controller: PageController(viewportFraction: 0.4),
                  itemBuilder: (_, i) {
                    return Transform.scale(
                        scale: i == index ? 1 : 0.9,
                        child: Container(
                          width: 200,
                          child: Stack(
                            children: [
                              const Text("Super card",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 19,
                                  )),
                              Positioned(
                                  child: Material(
                                child: Container(
                                  height: 180,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(19),
                                  ),
                                ),
                              )),
                              Positioned(
                                  top: 15,
                                  left: 22,
                                  child: Card(
                                    elevation: 10,
                                    shadowColor: Colors.grey.withOpacity(.5),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(19)),
                                    child: Column(children: const [
                                      Icon(
                                        IconData(0xf0545,
                                            fontFamily: 'MaterialIcons'),
                                        color: Color.fromARGB(255, 10, 45, 73),
                                      ),
                                    ]),
                                  )),
                              Positioned(
                                top: 65,
                                left: 22,
                                child: Column(children: const [
                                  Text(
                                    "Paypal Income",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ]),
                              ),
                              Positioned(
                                top: 82,
                                left: 22,
                                child: Column(children: const [
                                  Text(
                                    "Rs.19,000",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ]),
                              ),
                            ],
                          ),
                        ));
                  })),
          SizedBox(
            height: 300,
            child: PageView.builder(
              itemCount: 5,
              controller: PageController(viewportFraction: 0.7),
              itemBuilder: (_, i) {
                return Transform.scale(
                    scale: i == index ? 1 : 0.9,
                    child: Container(
                      margin: const EdgeInsets.only(top: 17, bottom: 10),
                      height: 290,
                      child: CreditCard(
                        cardType: CardType
                            .visa, // Optional if you want to override Card Type
                        cardNumber: "5450 7879",
                        cardExpiry: "10/25",
                        cardHolderName: "Card Holder",
                        cvv: "7899",
                        bankName: "Axis Bank",
                        showBackSide: false,
                        frontBackground: CardBackgrounds.black,
                        backBackground: CardBackgrounds.white,
                        showShadow: true,
                      ),
                    ));
              },
            ),
          ),
           Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:const[Text("Super ATM",
                  style: TextStyle(color: Colors.black, fontSize: 19))])
        ]),
      ),
    );
  }
}

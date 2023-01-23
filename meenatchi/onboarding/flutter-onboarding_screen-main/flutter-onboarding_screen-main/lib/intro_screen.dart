import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

const bodyStyle = TextStyle(fontSize: 19.0);

const pageDecoration = PageDecoration(
  titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
  bodyTextStyle: bodyStyle,
  bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
  pageColor: Colors.white,
  imagePadding: EdgeInsets.zero,
);

const customDotsDecorator = DotsDecorator(
  size: Size.square(10.0),
  activeSize: Size(20.0, 10.0),
  color: Colors.black26,
  activeColor: Color(0xFF6C63FF),
  spacing: EdgeInsets.symmetric(horizontal: 3.0),
  activeShape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25.0)),
  ),
);

Widget _buildImage(String assertName,
    [double width = 400, double height = 400]) {
  return Image.asset('images/$assertName', width: width, height: height);
}

var listOfPages = [
  PageViewModel(
    title: "Jaam Bank",
    body: "Be a step ahead in life. Save your money",
    image: _buildImage('screen_1.jpg'),
    decoration: pageDecoration,
  ),
  PageViewModel(
    title: "GO DIGITAL,GO SECURE",
    body: "Now you can transfer money 24*7,365 days anytime and anywhere.",
    image: _buildImage('screen_2.jpg'),
    decoration: pageDecoration,
  ),
  PageViewModel(
    title: "Security Awareness",
    body: "Mobile Security, ATM Threats, UPI Security",
    image: _buildImage('screen_3.jpg'),
    decoration: pageDecoration,
  ),
];

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: const BouncingScrollPhysics(),
        pages: listOfPages,
        onDone: () {
          Navigator.pushNamed(context, "home");
        },
        onSkip: () {
          Navigator.pushNamed(context, "home");
        },
        showBackButton: false,
        showSkipButton: true,
        skip: const Text(
          "Skip",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF6C63FF),
          ),
        ),
        next: const Icon(
          Icons.arrow_forward,
          color: Color(0xFF6C63FF),
        ),
        done: const Text(
          "Done",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF6C63FF),
          ),
        ),
        dotsDecorator: customDotsDecorator,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:onboarding/modules/buildpage.dart';
import 'package:onboarding/modules/signinpage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnBoarding extends StatefulWidget{
  @override
  State <StatefulWidget> createState () => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding>{

   String urlImage = '';
   String title = '';
   String subtitle = '';
  final controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
  title: Text('JAAM BANK'),
  backgroundColor: Colors.cyan,
  ),
      drawer: Drawer(),
      backgroundColor: Colors.grey[400],
       body: Container(
        
         padding: const EdgeInsets.only(bottom: 80),
         child: PageView(
           
           controller: controller,
           onPageChanged: (index){
             setState(() => isLastPage = index == 2);
           },
           children: const [

             BuildPage(
               urlImage: 'assets/images/onboardingscreen1.png',
               title: 'Positive Pay',
               subtitle: 'Your money is safe with us, Reliable and trustworthy.',
             ),

             BuildPage(
               urlImage: 'assets/images/onboardingscreen5.png',
               title: 'DoorStep Banking',
               subtitle: 'Banks that are as close as your house.',
             ),

             BuildPage(

               urlImage: 'assets/images/onboardingscreen6.png',
               title: 'Digital Home Loans',
               subtitle: 'The bank for a changing world, Always giving you extra.',
             ),

           ],
         ),
       ),

       bottomSheet: isLastPage
         ? TextButton(
           style: TextButton.styleFrom(
             primary: Colors.white,
             backgroundColor: Colors.cyan,
             minimumSize: const Size.fromHeight(80),
           ),
           onPressed: () async{
             //navigate to choose page
             final prefs = await SharedPreferences.getInstance();
             prefs.setBool('showChoose', true);
             Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => SignIn()),
             );
           },
           child: const Text(
             'Get Started',
             textAlign: TextAlign.center,
             style: TextStyle(
               fontSize: 24,
               fontWeight: FontWeight.bold,
             ),
           ),
         )
           :Container(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         height: 80,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [

             //skip
             TextButton(
                 onPressed: () => controller.jumpToPage(2),
                 child: const Text('SKIP', style: TextStyle(fontSize: 17,),)),
             //dots
             Center(
               child: SmoothPageIndicator(
                 controller: controller,
                 count: 3,
                 effect:const WormEffect(
                   spacing: 20,
                   dotColor: Colors.black26,
                   activeDotColor: Colors.cyan,
                 ),
                 //to click on dots and move
                 onDotClicked: (index) => controller.animateToPage(
                   index,
                   duration: const Duration(milliseconds: 500),
                   curve: Curves.ease,
                 ),
               ),
             ),
             //next
             TextButton(
                 onPressed: () => controller.nextPage(
                   duration: const Duration(milliseconds: 500),
                   curve: Curves.ease,),
                 child: const Text('NEXT', style: TextStyle(fontSize: 17,),)),
           ],
         ),
       ),
     );
  }
}
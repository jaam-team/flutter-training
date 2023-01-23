import 'package:flutter/material.dart';
import 'package:training_app/common/themes/colors.dart';
import 'package:training_app/common/ui-pattern.dart';
import 'package:training_app/pages/books/book_list_bloc_demo_page.dart';
import 'package:training_app/pages/books/book_list_page.dart';
import 'package:training_app/pages/demo_page.dart';
import 'package:training_app/pages/restaurant_list_page.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late Size dSize;
  late MediaQueryData mediaQuery;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    dSize = MediaQuery.of(context).size;
    mediaQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Container(
            width: dSize.width,
            //padding: EdgeInsets.only(top: mediaQuery.padding.top),
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.all(0),
            color: Color(0xFFFFFFFF), //
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: dSize.width,
                  padding:
                      EdgeInsets.only(top: mediaQuery.padding.top, bottom: 15),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Icon(
                          Icons.person_pin_circle_outlined,
                          color: Color(0XFFA8A0EC),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Hi Panda",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.notifications_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 5.0),
                            child: Text(
                              "Welcome back",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.thumb_up_alt_outlined,
                              color: Color(0XFFFFB90C), size: 25),
                        ],
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0XFFA8A0EC),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              height: 1.0,
                            ),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.blue[50],
                                height: 1.0,
                              ),
                              hintText: 'What are you looking for a?',
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 30,
                              ),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 20.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(
                        0XFF6C60E1), //Color(0xFF6C60E1), //Color(0xFF4174FE),
                    border: Border.all(
                      color: Color(0XFF6C60E1), //Color(0xFF6C60E1),
                    ),
                    borderRadius: UIPattern.heroTopBorderRadius(),
                  ),
                ),
                SizedBox(height: 20),
                // Expanded(
                //   child: ListView.builder(
                //     shrinkWrap: true,
                //     scrollDirection: Axis.horizontal,
                //     itemCount: 15,
                //     itemBuilder: (BuildContext context, int index) => Card(
                //       child: Center(child: Text('Dummy Card Text')),
                //     ),
                //   ),
                // ),
                Wrap(
                  children: [
                    dashBox(
                        searchFor: "Restaurant",
                        icon: Icons.restaurant,
                        boxBg: AppColors.yellowAccent,
                        circleBg: AppColors.yellowLite,
                        fg: AppColors.yellowDark,
                        nextPage: const RestaurantListPage()),
                    dashBox(
                        searchFor: "Books",
                        icon: Icons.menu_book,
                        boxBg: AppColors.bluishAccent,
                        circleBg: AppColors.bluishLite,
                        fg: AppColors.bluishDark,
                        nextPage: BooksListPage()),
                    dashBox(
                        searchFor: "Set State",
                        icon: Icons.car_repair,
                        boxBg: AppColors.purpleAccent,
                        circleBg: AppColors.purpleLite,
                        fg: AppColors.purpleDark,
                        nextPage: DemoPage()),
                    dashBox(
                        searchFor: "Books Bloc Demo Page",
                        icon: Icons.maps_home_work,
                        boxBg: AppColors.greenishAccent,
                        circleBg: AppColors.greenishLite,
                        fg: AppColors.greenishDark,
                        nextPage: BooksListBlocDemoPage()),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget dashBox({
    required String searchFor,
    required IconData icon,
    required Color boxBg,
    required Color circleBg,
    required Color fg,
    required Widget nextPage,
  }) {
    return InkWell(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => nextPage));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 150,
        width: dSize.width * .40,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: circleBg,
              radius: 30,
              child: Icon(icon, color: fg, size: 35),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(searchFor, style: TextStyle(fontSize: 15, color: fg)),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: boxBg,
            border: Border.all(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30))),
      ),
    );
  }
}

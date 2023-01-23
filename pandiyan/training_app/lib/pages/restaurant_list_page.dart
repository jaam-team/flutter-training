import 'package:flutter/material.dart';
import 'package:training_app/models/restaurant.dart';

class RestaurantListPage extends StatelessWidget {
  const RestaurantListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const restaurant = Restaurant('Saravana Bhavan', 'address Tnamaer');

    const List<Restaurant> restaurantList = [
      Restaurant('Saravana Bhavan', 'address T Nagar', distance: 10),
      Restaurant('Ponnusamy Hotel', 'address Besant Nagar', distance: 30),
      Restaurant('Ponnusamy Hotel', 'address Besant Nagar', distance: 50),
      Restaurant('Ponnusamy Hotel', 'address Besant Nagar'),
      Restaurant('Ponnusamy Hotel', 'address Besant Nagar'),
      Restaurant('Ponnusamy Hotel', 'address Besant Nagar'),
      Restaurant('Ponnusamy Hotel', 'address Besant Nagar'),
      Restaurant('Ponnusamy Hotel', 'address Besant Nagar'),
      Restaurant('Ponnusamy Hotel', 'address Besant Nagar'),
      Restaurant('Ponnusamy Hotel', 'address Besant Nagar'),
      Restaurant('Ponnusamy Hotel', 'address Besant Nagar'),
      Restaurant('Ponnusamy Hotel', 'address Besant Nagar'),
    ];
    Widget shopCard(int index) {
      return Card(
        elevation: 5,
        child: ListTile(
          title: Text(
            restaurantList[index].name,
            style: const TextStyle(
                color: Color(0XFF626165),
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
          subtitle: Text(restaurantList[index].address),
          trailing: restaurantList[index].distance != null
              ? Text('${restaurantList[index].distance} Kms')
              : const Text(''),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Restaurant List Page',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 60),
                  ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    padding: EdgeInsets.zero,
                    itemCount: restaurantList.length,
                    itemBuilder: (context, index) {
                      return shopCard(index);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

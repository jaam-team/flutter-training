class Onboarding {
  String image;
  String title;
  String discription;

  Onboarding({required this.image, required this.title, required this.discription});
}

List<Onboarding> contents = [
  Onboarding(
    title: 'All in one bank application',
    image: 'images/Bank.jpg',
    discription: " Easily manage your daily expense in one click from your hand"
  ),
  Onboarding(
    title: 'Track your expense everywhere',
    image: 'images/Track.jpg',
    discription: "Track your spending with automatic categorization. All in one place, win-win "
  ),
  Onboarding(
    title: 'Give you a maximum security option',
    image: 'images/Security.jpg',
    discription: "Don't worry about your account, we will provide our most secured protection"
  ),
];
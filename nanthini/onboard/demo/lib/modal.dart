class Onboarding {
  String image;
  String title;
  String discription;

  Onboarding({required this.image, required this.title, required this.discription});
}

List<Onboarding> contents = [
  Onboarding(
    title: 'Jaam Bank',
    image: 'images/money.svg',
    discription: " Lorem Ipsum has been the "
    "industry's standard dummy text ever since the 1500s, "
    "when an unknown printer took a galley of type and scrambled it "
  ),
  Onboarding(
    title: 'Reliability',
    image: 'images/bank.jpg',
    discription: "Lorem Ipsum has been the "
    "industry's standard dummy text ever since the 1500s, "
    "when an unknown printer took a galley of type and scrambled it "
  ),
  Onboarding(
    title: 'Secured',
    image: 'images/piggy.jpg',
    discription: "Lorem Ipsum has been the "
    "industry's standard dummy text ever since the 1500s, "
    "when an unknown printer took a galley of type and scrambled it "
  ),
];
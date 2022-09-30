class StartedModel {
  final String title;
  final String subTitle;
  final String img;

  StartedModel({
    required this.title,
    required this.subTitle,
    required this.img,
  });
}

List<StartedModel> startedModelData = [
  StartedModel(
    title: 'Beginners Guide',
    subTitle: 'see how it works',
    img: 'assets/beginner.png',
  ),
  StartedModel(
    title: 'Complete your Profile',
    subTitle: 'Win exciting cashback',
    img: 'assets/profile.png',
  ),
];

class JarModel {
  final String img;
  final String txt;

  JarModel({required this.img, required this.txt});
}

List<JarModel> bucketJarData = [
  JarModel(img: 'assets/travel.jpg', txt: 'Travel'),
  JarModel(img: 'assets/gadgets.jpg', txt: 'Gadgets'),
  JarModel(img: 'assets/home.jpg', txt: 'New Home'),
  JarModel(img: 'assets/home2.jpg', txt: 'New Home'),
];

List<JarModel> inevitablesJarData = [
  JarModel(img: 'assets/home.jpg', txt: 'New Home'),
  JarModel(img: 'assets/home2.jpg', txt: 'New Home'),
  JarModel(img: 'assets/travel.jpg', txt: 'Travel'),
  JarModel(img: 'assets/gadgets.jpg', txt: 'Gadgets'),
];

List<JarModel> luxuryJarData = [
  JarModel(img: 'assets/gadgets.jpg', txt: 'Gadgets'),
  JarModel(img: 'assets/home.jpg', txt: 'New Home'),
  JarModel(img: 'assets/travel.jpg', txt: 'Travel'),
  JarModel(img: 'assets/home2.jpg', txt: 'New Home'),
];

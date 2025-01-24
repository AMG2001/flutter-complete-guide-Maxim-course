import 'dart:math';

class FirstScreenService {

  int currentIndex=0;

  String imageBasePath = "assets/images/";

  final List<String> imageNames = [
    'dice-1.png',
    'dice-2.png',
    'dice-3.png',
    'dice-4.png',
    'dice-5.png',
    'dice-6.png'
  ];

  void randomizeIndex(){
    currentIndex = Random().nextInt(imageNames.length);
  }
}
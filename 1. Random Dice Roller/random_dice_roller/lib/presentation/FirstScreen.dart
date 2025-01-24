import 'package:flutter/material.dart';
import 'package:random_dice_roller/config/DI_Container.dart';
import 'package:random_dice_roller/service/first_screen_service.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  
  FirstScreenService firstScreenService = getIt<FirstScreenService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 45, 7, 98),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            '${firstScreenService.imageBasePath}${firstScreenService.imageNames.elementAt(firstScreenService.currentIndex)}',
            width: 200,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  firstScreenService.randomizeIndex();
                });
              },
              child: Text('Roll Dice'))
        ]),
      ),
    );
  }
}

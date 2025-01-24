import 'package:flutter/material.dart';
import 'package:random_dice_roller/config/DI_Container.dart';
import 'package:random_dice_roller/presentation/FirstScreen.dart';

void main() {
  // setup the DI Container.
  setUpDependencies();

  runApp(RecapOnFlutterApp());
}

class RecapOnFlutterApp extends StatelessWidget {
  const RecapOnFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Recap on Flutter",
      home: FirstScreen(),
    );
  }
}
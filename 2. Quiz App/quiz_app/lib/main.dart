import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/config/DI_Container.dart';
import 'package:quiz_app/presentation/pages/first_page/first_page.dart';

void main() {
  setUpDependencies();
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final screenHieght = MediaQuery.sizeOf(context).height;

    return ScreenUtilInit(
      designSize: Size(
          screenWidth, screenHieght), // Default design size (width, height)
      minTextAdapt: true, // Allow text to scale down
      splitScreenMode: true, // Support split-screen mode
      builder: (context, child) {
        return MaterialApp(
          title: "Quiz App",
          home: FirstPage(),
        );
      },
    );
  }
}

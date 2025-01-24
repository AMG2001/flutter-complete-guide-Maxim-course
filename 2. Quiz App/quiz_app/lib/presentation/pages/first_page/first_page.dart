import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/presentation/pages/quiz_page/quiz_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: const Color.fromARGB(255, 67, 3, 120)),
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 250.w,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Learn Flutter the fun way',
              style: TextStyle(color: Colors.white, fontSize: 24.sp),
            ),
            SizedBox(
              height: 20.h,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return QuizPage();
                    },
                  ),
                );
              },
              icon: Icon(Icons.arrow_forward_ios),
              label: Text('Start Quiz'),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/config/DI_Container.dart';
import 'package:quiz_app/presentation/pages/quiz_page/widgets/Question_Widget.dart';
import 'package:quiz_app/presentation/pages/result_page/result_page.dart';
import 'package:quiz_app/service/quiz_page_service.dart';

class QuizPage extends StatefulWidget {
  QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final quizPageService = getIt<QuizPageService>();

  void onAnswerSubmitted() {
    setState(() {
      if (quizPageService.currentQuestionIndex <
          quizPageService.getNumberOfQuestions()-1) {
        print(quizPageService.currentQuestionIndex);
        quizPageService.currentQuestionIndex++;
      } else
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ResultsPage();
            },
          ),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: QuestionWidget(
          onAnswerSubmitted: onAnswerSubmitted,
          questionModel: quizPageService
              .getQuestionModelAtIndex(quizPageService.currentQuestionIndex),
          questionIndex: quizPageService.currentQuestionIndex,
        ),
      ),
    );
  }
}

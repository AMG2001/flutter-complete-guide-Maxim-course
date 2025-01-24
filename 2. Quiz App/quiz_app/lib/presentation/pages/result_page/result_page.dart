import 'package:flutter/material.dart';
import 'package:quiz_app/config/DI_Container.dart';
import 'package:quiz_app/presentation/pages/result_page/widgets/UserAnswerResult.dart';
import 'package:quiz_app/service/quiz_page_service.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final quizService = getIt<QuizPageService>();
    return Scaffold(
      body: Container(
        decoration:
            BoxDecoration(color: const Color.fromARGB(255, 108, 39, 176)),
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: ListView.builder(
          itemCount: quizService.getNumberOfQuestions(),
          itemBuilder: (context, index) {
            final currentResult =
                quizService.userAnswersResult.elementAt(index);
            return UserAnswerResult(
                questionsNumber: index + 1,
                question: currentResult.question,
                choosenAnswer: currentResult.choosenAnswer,
                correctAnswer: currentResult.correctAnswer);
          },
        ),
      ),
    );
  }
}

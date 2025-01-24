import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/config/DI_Container.dart';
import 'package:quiz_app/model/QuestionModel.dart';
import 'package:quiz_app/service/quiz_page_service.dart';

class QuestionWidget extends StatelessWidget {
  QuestionWidget(
      {required this.questionModel,
      required this.questionIndex,
      required this.onAnswerSubmitted,
      super.key});

  VoidCallback onAnswerSubmitted;
  QuestionModel questionModel;
  int questionIndex;

  @override
  Widget build(BuildContext context) {
    final quizService = getIt<QuizPageService>();
    final vSpace = SizedBox(height: 20.h);

    return Container(
        alignment: Alignment.center,
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(questionModel.question),
            vSpace,
            Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                questionModel.choices.length,
                (index) {
                  return Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          quizService.addUserAnswer(
                            choosenAnswer: questionModel.choices[index],
                            questionIndex: questionIndex,
                          );
                          onAnswerSubmitted();
                        },
                        child: Text(
                          questionModel.choices[index],
                        ),
                      ),
                      vSpace,
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      );

  }
}

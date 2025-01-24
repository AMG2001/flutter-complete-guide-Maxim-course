import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserAnswerResult extends StatelessWidget {
  UserAnswerResult(
      {required this.questionsNumber,
      required this.question,
      required this.choosenAnswer,
      required this.correctAnswer,
      super.key});

  int questionsNumber;
  String question, choosenAnswer, correctAnswer;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        question,
        style: TextStyle(color: Colors.white, fontSize: 16.sp),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            choosenAnswer,
            style: TextStyle(color: Colors.purple),
          ),
          Text(
            correctAnswer,
            style: TextStyle(color: Colors.lightBlue),
          ),
        ],
      ),
      leading: CircleAvatar(
        backgroundColor:
            choosenAnswer == correctAnswer ? Colors.lightBlue : Colors.purple,
        child: Text(questionsNumber.toString()),
      ),
    );
  }
}

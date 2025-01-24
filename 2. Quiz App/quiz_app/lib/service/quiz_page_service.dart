import 'package:quiz_app/model/QuestionModel.dart';
import 'package:quiz_app/presentation/pages/quiz_page/widgets/Question_Widget.dart';
import 'package:quiz_app/presentation/pages/result_page/widgets/UserAnswerResult.dart';

class QuizPageService {
  int currentQuestionIndex = 0;

  List<UserAnswerResult> userAnswersResult = [];

  final _questions = [
    QuestionModel(
      question: 'What are the main building blocks of Flutter UIs?',
      choices: [
        'Widgets',
        'Components',
        'Blocks',
        'Functions',
      ],
      correctAnswer: 'Widgets', // First choice is the correct answer
    ),
    QuestionModel(
      question: 'How are Flutter UIs built?',
      choices: [
        'By combining widgets in code',
        'By combining widgets in a visual editor',
        'By defining widgets in config files',
        'By using XCode for iOS and Android Studio for Android',
      ],
      correctAnswer:
          'By combining widgets in code', // First choice is the correct answer
    ),
    QuestionModel(
      question: 'What\'s the purpose of a StatefulWidget?',
      choices: [
        'Update UI as data changes',
        'Update data as UI changes',
        'Ignore data changes',
        'Render UI that does not depend on data',
      ],
      correctAnswer:
          'Update UI as data changes', // First choice is the correct answer
    ),
    QuestionModel(
      question:
          'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
      choices: [
        'StatelessWidget',
        'StatefulWidget',
        'Both are equally good',
        'None of the above',
      ],
      correctAnswer: 'StatelessWidget', // First choice is the correct answer
    ),
    QuestionModel(
      question: 'What happens if you change data in a StatelessWidget?',
      choices: [
        'The UI is not updated',
        'The UI is updated',
        'The closest StatefulWidget is updated',
        'Any nested StatefulWidgets are updated',
      ],
      correctAnswer:
          'The UI is not updated', // First choice is the correct answer
    ),
    QuestionModel(
      question: 'How should you update data inside of StatefulWidgets?',
      choices: [
        'By calling setState()',
        'By calling updateData()',
        'By calling updateUI()',
        'By calling updateState()',
      ],
      correctAnswer:
          'By calling setState()', // First choice is the correct answer
    ),
  ];

  int getNumberOfQuestions() {
    return _questions.length;
  }

  QuestionModel getQuestionModelAtIndex(int index) {
    return _questions.elementAt(index);
  }

  void addUserAnswer(
      {required String choosenAnswer, required int questionIndex}) {
    userAnswersResult.add(UserAnswerResult(
        questionsNumber: questionIndex,
        question: _questions.elementAt(questionIndex).getQuestion,
        choosenAnswer: choosenAnswer,
        correctAnswer: _questions.elementAt(questionIndex).getCorrectAnswer));
  }
}

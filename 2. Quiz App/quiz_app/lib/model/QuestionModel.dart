class QuestionModel {
  
  String question;
  List<String> choices;
  String correctAnswer;
  
 String get getQuestion => this.question;

 set setQuestion(String question) => this.question = question;

  get getChoices => this.choices;

 set setChoices( choices) => this.choices = choices;

  get getCorrectAnswer => this.correctAnswer;

 set setCorrectAnswer( correctAnswer) => this.correctAnswer = correctAnswer;
  
  QuestionModel(
      {required this.question,
      required this.choices,
      required this.correctAnswer});
}

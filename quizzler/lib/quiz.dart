class Question {
  String questionText;
  bool questionAnswer;

  Question(this.questionText, this.questionAnswer);
}

class Quiz {
  final List<Question> _questions = [
    Question('Does a cow have 4 legs', true),
    Question('Is snail faster than cheetah', false),
    Question('Do you think this app is cool', false),
    Question('Is Dart or Flutter hard', false),
    Question('Is Ava Max overrated', false),
    Question('What goes around comes around', true),
  ];

  String getQuestion(int questionNo) {
    return _questions[questionNo].questionText;
  }
}

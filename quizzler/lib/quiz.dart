import 'package:flutter/material.dart';

class Question {
  String questionText;
  bool questionAnswer;

  Question(this.questionText, this.questionAnswer);
}

class Quiz {
  int _questionNo = 0;
  final List<Icon> _scoreIcons = [];

  final List<Question> _questions = [
    Question('Does a cow have 4 legs', true),
    Question('Is snail faster than cheetah', false),
    Question('Do you think this app is cool', false),
    Question('Is Dart or Flutter hard', false),
    Question('Is Ava Max overrated', false),
    Question('What goes around comes around', true),
  ];

  void nextQuestion() {
    if (_questionNo < _questions.length - 1) {
      _questionNo++;
    }
  }

  String getCurrentQuestion() {
    return _questions[_questionNo].questionText;
  }

  bool getCurrentAnswer() {
    return _questions[_questionNo].questionAnswer;
  }

  List<Icon> getScores() {
    return _scoreIcons;
  }

  void checkQn(bool userAns) {
    if (_questionNo == _questions.length - 1) {
      // print('You\'ve reached the end');
    } else {
      bool corrAns = userAns == getCurrentAnswer();
      if (corrAns) {
        _scoreIcons.add(
          const Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        _scoreIcons.add(
          const Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }
    }
  }
}

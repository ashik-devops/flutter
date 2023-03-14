import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  static const _questions = [
    {
      "questionText": "What is your favourite color",
      "answer": [
        {"text": "Blue", "score": 3},
        {"text": "Black", "score": 8},
        {"text": "Red", "score": 5},
        {"text": "Yellow", "score": 2},
        {"text": "White", "score": 1}
      ]
    },
    {
      "questionText": "What is your favourite Animals",
      "answer": [
        {"text": "Rabbit", "score": 1},
        {"text": "Tiger", "score": 8},
        {"text": "Lion", "score": 7},
        {"text": "Snale", "score": 3},
        {"text": "Dog", "score": 6}
      ]
    },
    {
      "questionText": "Who is your favourite Instructor",
      "answer": [
        {"text": "Max", "score": 1},
        {"text": "Schwarz", "score": 8},
        {"text": "Müller", "score": 7},
        {"text": "Millian", "score": 6}
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my first app"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_resetQuiz, _totalScore),
      ),
    );
  }
}

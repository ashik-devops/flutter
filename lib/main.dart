import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  var questions = [
    "What is your favourite color",
    "What is your favourite animal"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my first app"),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]),
          ElevatedButton(
            child: Text("Answer 1"),
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
            child: Text("Answer 2"),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text("Answer 3"),
            onPressed: () {},
          ),
        ]),
      ),
    );
  }
}

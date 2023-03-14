import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuiz;
  final int resultScore;

  Result(this.resetQuiz, this.resultScore);
  String get resultPhrase {
    String resultText = "You did it";
    if (resultScore < 8) {
      resultText = "You did great";
    } else {
      resultText = "You are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: resetQuiz,
            child: Text("Restart Quiz"),
          )
        ],
      ),
    );
  }
}

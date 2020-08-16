import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    if (resultScore <= 8) {
      return 'NAH';
    } else if (resultScore <= 16) {
      return 'Bad';
    } else if (resultScore <= 20) {
      return 'Good';
    } else if (resultScore <= 24) {
      return 'Great';
    } else {
      return 'Awesome';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            onPressed: resetQuiz,
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 2},
        {'text': 'Blue', 'score': 9},
        {'text': 'Black', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 8},
        {'text': 'Dog', 'score': 10},
        {'text': 'Monkey', 'score': 2},
        {'text': 'Bird', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favorite car?',
      'answers': [
        {'text': 'Ford', 'score': 6},
        {'text': 'Kia', 'score': 6},
        {'text': 'Audi', 'score': 10},
        {'text': 'Mercedes', 'score': 9},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuize() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(
                _totalScore,
                _resetQuize,
              ),
      ),
    );
  }
}

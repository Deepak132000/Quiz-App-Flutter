import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionindex = 0;
  var _totalscore = 0;

  void _restartquiz() {
    setState(() {
      _questionindex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalscore += score;

    setState(() {
      _questionindex += 1;
    });

    print(_questionindex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'question': 'What\'s your favourite colour?',
        'answers': [
          {'text': 'White', 'score': 3},
          {'text': 'Black', 'score': 10},
          {'text': 'Blue', 'score': 5},
          {'text': 'Green', 'score': 2},
        ],
      },
      {
        'question': 'Who is your favourite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 5},
          {'text': 'Lion', 'score': 10},
          {'text': 'Girrafe', 'score': 3},
          {'text': 'Elephant', 'score': 7},
        ],
      },
      {
        'question': 'Who is your favourite instructor?',
        'answers': [
          {'text': 'Max', 'score': 10},
          {'text': 'Dev', 'score': 5},
          {'text': 'Sonia', 'score': 1},
          {'text': 'Raj', 'score': 3},
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color.fromARGB(143, 135, 143, 172),
            title: Text(
              'MY FIRST APP',
              textAlign: TextAlign.center,
            ),
          ),
          body: _questionindex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionindex: _questionindex,
                )
              : result(_totalscore, _restartquiz)),
    );
  }
}


import 'package:flutter/material.dart';
import './answer.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionindex;
  final Function(int) answerQuestion;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionindex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Questions(questions[questionindex]["question"] as String),
      ...(questions[questionindex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(() => answerQuestion(answer['score'] as int),
            answer['text'] as String);
      }).toList(),
    ]);
  }
}

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> Questions;
  final void Function() answerQuestion;
  final int indexQuestion;

  Quiz(
      {required this.Questions,
      required this.answerQuestion,
      required this.indexQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        question(
          Questions[indexQuestion]['questionText'] as String,
        ),
        ...(Questions[indexQuestion]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
      ],
    );
  }
}

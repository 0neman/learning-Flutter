import 'package:flutter/material.dart';
import 'package:flutter_application_1/quiz.dart';
import 'package:flutter_application_1/result.dart';
import './answer.dart';
import './question.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(Halloween());
}

class Halloween extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HalloweenState();
  }
}

class _HalloweenState extends State<Halloween> {
  @override
  var questions = [
    {
      "questionText": "are You blind?",
      "answers": ["yeah i'm blind", "nahh i'm deaf", "21"]
    },
    {
      "questionText": "Its okay",
      "answers": ["faut être rigueur", "C'est le money", "21"]
    },
    {
      "questionText": "Ana Hard",
      "answers": ["ana Roussi", "excite", "21"]
    },
    {
      "questionText": "Can you do som for me",
      "answers": ["talk to the ops", "zesty", "21", "do your ting"]
    },
  ];
  var _questionIndex = 0;
  void _questionAnswered() {
    setState(() {
      if (_questionIndex < questions.length) {
        _questionIndex = _questionIndex + 1;
      }
    });
    print(_questionIndex);
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Text(
              "Okaaaayy Let's goo",
              textAlign: TextAlign.center,
            ),
          )),
          body: _questionIndex < questions.length
              ? Quiz(
                  Questions: questions,
                  answerQuestion: _questionAnswered,
                  indexQuestion: _questionIndex)
              : Result(_reset)),
    );
  }
}

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() frWhy;
  final String textAnswer;
  Answer(this.frWhy, this.textAnswer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black87),
        child: Text(textAnswer),
        onPressed: frWhy,
      ),
    );
  }
}

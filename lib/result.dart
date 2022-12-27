import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final void Function() resetIndex;
  Result(this.resetIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text("You suck"),
        ),
        TextButton(onPressed: resetIndex, child: Text("go back"))
      ],
    );
  }
}

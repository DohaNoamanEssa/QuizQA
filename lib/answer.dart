import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerQuestion;
  final void Function() x;

  Answer(this.x, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.black,
        child: Text(
          answerQuestion,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        onPressed: x,
      ),
    );
  }
}

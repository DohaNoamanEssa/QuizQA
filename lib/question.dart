import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      alignment: Alignment.topCenter,
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 30,
          color: Colors.black,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}

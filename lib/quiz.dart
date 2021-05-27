import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p1/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final  List<Map<String, Object>> question ;
  final int questionIndex;
  final  Function answerQuestion;

   Quiz( this.question, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            (question[questionIndex]['questionText']).toString()),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
              int xx=answer['score'] as int;
              String ss=answer['text'].toString();
          return Answer(() => answerQuestion(xx), ss);
        }).toList(),
      ],
    );
  }
}

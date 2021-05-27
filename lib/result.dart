import 'package:flutter/material.dart';


class Resault extends StatelessWidget {
  final   void Function() resetQuiz;
  final resultScore;

  Resault( this.resetQuiz,this.resultScore);

  String get resultPhrase{
    String resultText="";
    if(resultScore>=70){
      resultText="You are Awesome";

    }else if(resultScore>=40){
      resultText="pretty likable";

    }else{
      resultText="You are so bad";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Score= $resultScore \n $resultPhrase",
          style: TextStyle(
              fontSize: 25, color: Colors.redAccent, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),

        FlatButton(
          onPressed: resetQuiz,
          child: Text(
            "Restart Quiz ?",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:p1/quiz.dart';
import 'package:p1/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: MyHomePage(title: 'Quiz App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _totalScore = 0;

  int _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'red', 'score': 10},
        {'text': 'yellow', 'score': 20},
        {'text': 'green', 'score': 30},
        {'text': 'brown', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'lion', 'score': 10},
        {'text': 'cat', 'score': 20},
        {'text': 'dog', 'score': 30},
        {'text': 'tiger', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s your favorite constructor?',
      'answers': [
        {'text': 'faleh', 'score': 10},
        {'text': 'rafie', 'score': 20},
        {'text': 'dahab', 'score': 30},
        {'text': 'angela', 'score': 40}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            width: double.infinity,
            child: _questionIndex < _question.length
                ? Quiz(_question, _questionIndex, answerQuestion)
                : Resault(_resetQuiz, _totalScore)));
  }
}

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 5},
        {'text': 'Lion', 'score': 3},
        {'text': 'Cat', 'score': 2},
      ]
    },
    {
      'questionText': 'What\'s your favourite cricketer?',
      'answers': [
        {'text': 'MSD', 'score': 0},
        {'text': 'Hitman', 'score': 3},
        {'text': 'King Kohli', 'score': 10},
        {'text': 'God Sachin', 'score': 5},
      ]
    },
  ];
  //_-->changes a public class to private class it means these cannot be used outside mian.dart file
  var _questionIndex = 0; //private property of class
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      // build method will be retriggered
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool=true;
    // aBool=false;
    _totalScore += score;
    setState(() {
      //calls build widget again
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print("No more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const['Hello'];
    // var dummy = ['Hello'];
    // dummy.add('Max'); -->add modify the original list unlike  map
    // print(dummy);
    //questions =[]-->this doesn't work if questions is constant
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

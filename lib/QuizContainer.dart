import 'package:flutter/material.dart';
import 'package:helloworld/FinalScore.dart';
import './Quiz.dart';
import './Score.dart';
import './FinalScore.dart';

class QuizContainer extends StatefulWidget {
  @override
  _QuizContainerState createState() => _QuizContainerState();
}

class _QuizContainerState extends State<QuizContainer> {
  void _Log({String message = ""}) {
    debugPrint('pressed $message');
    //Testing
  }

  final _questions = const [
    {
      "Question": "Whats your favorite color?",
      "Answer": [
        {"Text": "Red", "Score": 5},
        {"Text": "Blue", "Score": 10},
        {"Text": "White", "Score": 15}
      ]
    },
    {
      "Question": "Whats your favorite animal?",
      "Answer": [
        {"Text": "Dog", "Score": 5},
        {"Text": "Cat", "Score": 4},
        {"Text": "Fish", "Score": 12}
      ]
    },
    {
      "Question": "Fav super hero?",
      "Answer": [
        {"Text": "Batman", "Score": 10},
        {"Text": "Spiderman", "Score": 11},
        {"Text": "Shinchan", "Score": 100}
      ]
    },
  ];

  int questionIndex = 0;
  int _totalScore = 0;
  void _answerQuestionHandler(int score) {
    setState(() {
      questionIndex++;
      _totalScore += score;
    });
    print(questionIndex);
  }

  void _resetHandler() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget RenderQuestionsAndAnswer() {
    return questionIndex >= _questions.length
        ? FinalScore(_totalScore, _resetHandler)
        : Column(
            children: <Widget>[
              Score(_totalScore),
              Quiz(_questions, questionIndex, _answerQuestionHandler)
            ],
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RenderQuestionsAndAnswer(),
    );
  }
}

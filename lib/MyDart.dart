import 'package:flutter/material.dart';
import 'package:helloworld/FinalScore.dart';
import './Quiz.dart';
import './Score.dart';
import './FinalScore.dart';

class MyDart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyDart> {
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
  void _AnswerQuestionHandler(int score) {
    setState(() {
      questionIndex++;
      _totalScore += score;
    });
    print(questionIndex);
  }

  Widget RenderQuestionsAndAnswer() {
    return questionIndex >= _questions.length
        ? FinalScore(_totalScore, this.ResetHandler)
        : Column(
            children: <Widget>[
              Score(_totalScore),
              Quiz(_questions, questionIndex, _AnswerQuestionHandler)
            ],
          );
  }

  void ResetHandler() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "My First App",
        home: Scaffold(
            appBar: AppBar(
              title: Text("App bar title"),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text("Greet me"),
                )
              ],
            ),
            backgroundColor: Colors.white,
            body: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(20),
                child: RenderQuestionsAndAnswer())));
  }
}

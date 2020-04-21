import 'package:flutter/material.dart';
import './Quiz.dart';

class MyDart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyDart> {
  void _Log({String message = ""}) {
    debugPrint('pressed ${message}');
    //Testing
  }

  final _questions = const [
    {
      "Question": "Whats your favorite color?",
      "Answer": ["Red", "Blue", "White"]
    },
    {
      "Question": "Whats your favorite animal?",
      "Answer": ["Dog", "Cat", "Fish"]
    },
    {
      "Question": "Fav super hero?",
      "Answer": ["Batman", "Spiderman", "Shinchan"]
    },
  ];

  int questionIndex = 0;

  var _testString = "";

  void _AnswerQuestionHandler() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
  }

  Widget RenderQuestionsAndAnswer() {
    return questionIndex >= _questions.length
        ? Text("Yay! no more questions!")
        : Quiz(_questions, questionIndex, _AnswerQuestionHandler);
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

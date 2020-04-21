import 'package:flutter/material.dart';
import './question.dart';

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

  int questionIndex = 0;
  var _questions = [
    "Whats your favorite color?",
    "Whats your favorite animal?"
  ];
  var _testString = "";

  void _AnswerQuestion() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
  }

  void _TextOnchangeHandler(String val) {
    setState(() {
      _testString = val;
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
              margin: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Question(_questions[questionIndex]),
                  RaisedButton(
                      child: Text("Ansser question 1"),
                      onPressed: _AnswerQuestion),
                  RaisedButton(
                      child: Text("Ansser question 2"),
                      onPressed: _AnswerQuestion),
                  Text("Realtime value is: $_testString"),
                  TextFormField(
                    onChanged: _TextOnchangeHandler,
                    decoration: InputDecoration(hintText: "Test"),
                  )
                ],
              ),
            )));
  }
}

import 'package:flutter/material.dart';
import './question.dart';
import './Answer.dart';

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
  ];

  int questionIndex = 0;

  var _testString = "";

  void _AnswerQuestionHandler() {
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

  Widget RenderQuestionsAndAnswer() {
    return questionIndex >= _questions.length
        ? Text("Yay! no more questions!")
        : Column(
            children: <Widget>[
              Question(_questions[questionIndex]["Question"]),
              ...(_questions[questionIndex]["Answer"] as List<String>).map((i) {
                return Answer(i, _AnswerQuestionHandler);
              }),
              Text("Realtime value is: $_testString"),
              TextFormField(
                onChanged: _TextOnchangeHandler,
                decoration: InputDecoration(hintText: "Test"),
              )
            ],
          );
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

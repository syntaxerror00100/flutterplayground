import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answer;
  final Function _answerHandler;

  Answer(this._answer, this._answerHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(_answer),
        onPressed: _answerHandler,
      ),
    );
  }
}

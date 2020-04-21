import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answer;
  final Function _answerHandler;
  final int _score;

  Answer(this._answer, this._answerHandler, this._score);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(_answer),
        onPressed: () {
          _answerHandler(_score);
        },
      ),
    );
  }
}

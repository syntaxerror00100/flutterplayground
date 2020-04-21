import 'package:flutter/material.dart';

import 'Score.dart';

class FinalScore extends StatelessWidget {
  final int _totalScore;
  final Function _resetHandler;

  FinalScore(this._totalScore, this._resetHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Text("Yay! no more questions!"),
        Score(_totalScore),
        RaisedButton(
          child: Text("Reset"),
          onPressed: _resetHandler,
        )
      ],
    ));
  }
}

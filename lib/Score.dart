import 'package:flutter/widgets.dart';

class Score extends StatelessWidget {
  final int _totalScore;
  Score(this._totalScore);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Score is: $_totalScore"),
    );
  }
}

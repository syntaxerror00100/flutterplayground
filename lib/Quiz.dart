import 'package:flutter/material.dart';

import 'Answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final Function _AnswerQuestionHandler;
  final int _questionIndex;
  final List<Map<String, Object>> _questions;

  Quiz(this._questions, this._questionIndex, this._AnswerQuestionHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Question(_questions[_questionIndex]["Question"]),
        ...(_questions[_questionIndex]["Answer"] as List<String>).map((i) {
          return Answer(i, _AnswerQuestionHandler);
        }),
      ],
    ));
  }
}

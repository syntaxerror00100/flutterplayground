import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _qestion;
  Question(this._qestion);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 0),
        child: Text(
          _qestion,
          style: TextStyle(fontSize: 28, color: Colors.blue),
          textAlign: TextAlign.center,
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:helloworld/QuizContainer.dart';
import './QuizContainer.dart';

class MyDart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                child: new QuizContainer())));
    ;
  }
}

// class MyDart extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return _MyAppState();
//   }
// }

// class _MyAppState extends State<MyDart> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//         title: "My First App",
//         home: Scaffold(
//             appBar: AppBar(
//               title: Text("App bar title"),
//               actions: <Widget>[
//                 FlatButton(
//                   onPressed: () {},
//                   child: Text("Greet me"),
//                 )
//               ],
//             ),
//             backgroundColor: Colors.white,
//             body: Container(
//                 alignment: Alignment.center,
//                 margin: EdgeInsets.all(20),
//                 child: new QuizContainer())));
//   }
// }

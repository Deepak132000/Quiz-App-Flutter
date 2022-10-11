

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectionHandler;
  final String answertext;

  Answer(this.selectionHandler, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 5,
        left: 30,
        right: 30,
        bottom: 5,
      ),
      child: ElevatedButton(
        autofocus: false,
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 121, 96, 139)),
            shadowColor: MaterialStateProperty.all(Color.fromARGB(0, 0, 0, 2))),
        onPressed: selectionHandler,
        child: Text(
          answertext,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionsText;

  Questions(this.questionsText);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(177, 15, 15, 1),
          border:
              Border.all(color: Color.fromARGB(255, 231, 244, 54), width: 5),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      margin: EdgeInsets.only(left: 10, top: 150, right: 10, bottom: 0),
      width: double.infinity,
      child: Text(
        questionsText,
        style: TextStyle(fontSize: 30, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}

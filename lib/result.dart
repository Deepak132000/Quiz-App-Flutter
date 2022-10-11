import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultscore;
  final Function() resethandler;

  result(
    this.resultscore,
    this.resethandler,
  );

  String get resultphrase {
    var resulttext;
    if (resultscore <= 5) {
      resulttext = 'You are so amazing';
    } else if (resultscore <= 10) {
      resulttext = 'You are pretty good';
    } else if (resultscore <= 15) {
      resulttext = 'You are ...  strange';
    } else {
      resulttext = 'You are so bad';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Text(
            resultphrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resethandler,
            child: Text(
              'Restart Quiz',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ]));
  }
}

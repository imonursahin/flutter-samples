import 'package:flutter/material.dart';

import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void randomNumber() {
    var random = new Random();

    int minValue = 10;
    int maxValue = 200;
    int resultValue = minValue + random.nextInt(maxValue - minValue);

    //print(resultValue);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
          Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () => randomNumber(),
                child: Text(
                  'Generate',
                  style: TextStyle(fontSize: 20),
                ),
                textColor: Colors.white,
                color: Colors.black,
                padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
              )),
          Container(
            child: Text("data"),
          ),
        ]))));
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

class RandomNumber extends StatefulWidget {
  @override
  _RandomNumberState createState() => _RandomNumberState();
}

class _RandomNumberState extends State<RandomNumber> {
  int result = 0;
  void randomNumber() {
    var random = new Random();

    int minValue = 10;
    int maxValue = 200;
    setState(() {
      result = minValue + random.nextInt(maxValue - minValue);
    });

    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
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
            child: Text(result.toString()),
          ),
        ]));
  }
}

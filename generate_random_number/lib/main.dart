import 'package:flutter/material.dart';

import 'dart:math';

import 'package:generate_random_number/randomNumber.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void randomNumber() {
    var random = new Random();

    int minValue = 10;
    int maxValue = 200;
    int result = minValue + random.nextInt(maxValue - minValue);

    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: RandomNumber()));
  }
}

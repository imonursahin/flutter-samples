import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tooltip'),
        ),
        body: Center(
          child: Tooltip(
            height: 15,
            //verticalOffset: 1.5,
            //preferBelow: false,
            //waitDuration: Duration(seconds: 1),
            //showDuration: Duration(seconds: 2),
            //decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(10), color: Colors.green),
            message: 'This is a tooltip',
            child: FlatButton(
              minWidth: 100,
              onPressed: () {},
              child: Icon(
                Icons.info,
                size: 50,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

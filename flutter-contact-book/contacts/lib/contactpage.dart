import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 5,
        ),
        userS(),
        userS(),
        userS(),
        userS(),
      ],
    );
  }

  Card userS() {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 5,
      color: Colors.green[50],
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.green[500],
          child: Icon(Icons.person, color: Colors.white),
          radius: 20,
        ),
        title: SelectableText("Lorem Ipsum"),
        subtitle: SelectableText(
            "+90 000 00 00 \n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
      ),
    );
  }
}

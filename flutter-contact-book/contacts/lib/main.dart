import 'package:flutter/material.dart';
import 'package:contacts/addpage.dart';
import 'package:contacts/contactpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'İletişim Defteri ',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.contacts),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.person_add)),
                Tab(icon: Icon(Icons.contact_page)),
              ],
            ),
            title: Text('İletişim Rehberi'),
          ),
          body: new TabBarView(
            children: <Widget>[
              new Add(),
              new ContactPage(),
            ],
          ),
        ));
  }
}

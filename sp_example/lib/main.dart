import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SharedPreferences',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  late SharedPreferences prefs;
  TextEditingController userController = new TextEditingController();
  String userName = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SharedPreferences", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: userController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                userName,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: Text("Kaydet", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  save();
                },
              ),
              ElevatedButton(
                child: Text("Oku", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  read();
                },
              ),
              ElevatedButton(
                child: Text("Sil", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  delete();
                },
              )
            ],
          )),
    );
  }

  save() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString("username", userController.text.toString());
  }

  read() async {
    prefs = await SharedPreferences.getInstance();
    userName = prefs.getString("username") ?? "Değer Yok";
    setState(() {});
  }

  delete() async {
    prefs = await SharedPreferences.getInstance();
    prefs.remove("username");
    userName = "";
    setState(() {});
  }
}

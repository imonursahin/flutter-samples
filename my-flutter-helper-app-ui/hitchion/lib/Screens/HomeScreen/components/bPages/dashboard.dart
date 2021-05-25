import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Home',
        ),
        actions: <Widget>[
          IconButton(
              splashColor: Colors.black,
              highlightColor: Colors.black,
              icon: Icon(
                Icons.person,
                color: Colors.grey[500],
                size: 32.0,
              ),
              onPressed: () {}),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 25),
            height: 100,
            color: Colors.amber,
            child: ListTile(
              title: Text(
                "No one of your contacts is on the road",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.notifications_active,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

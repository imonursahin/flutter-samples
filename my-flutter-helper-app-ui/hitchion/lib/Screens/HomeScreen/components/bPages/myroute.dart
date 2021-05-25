import 'package:flutter/material.dart';

class MyRoute extends StatefulWidget {
  @override
  _MyRouteState createState() => _MyRouteState();
}

class _MyRouteState extends State<MyRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('My route'),
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
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 25),
              height: 100,
              color: Colors.amber,
              child: ListTile(
                title: Text(
                  "You haven't added any road info yet",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.person_pin_circle,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: FlatButton(
                child: Text("+ Add road information"),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Color(0xFF37474F),
                        width: 2,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(60)),
                splashColor: Colors.amber,
                highlightColor: Colors.amber,
              ),
            ),
            Container(
              height: 100,
              color: Colors.amber,
              margin: EdgeInsets.only(top: 50),
              child: Center(
                child: ListTile(
                  title: Text(
                    "You're on the road...",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle:
                      Text(" Plaque: 34 TR 034 \n Transport: Hitchhiking"),
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.drive_eta,
                      color: Colors.black,
                    ),
                  ),
                  trailing: IconButton(
                    splashColor: Colors.amber,
                    highlightColor: Colors.amber,
                    icon: Icon(
                      Icons.close_sharp,
                      color: Colors.black,
                      size: 45.0,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            Wrap(
              children: [
                quickNotification("Danger! Help me", Colors.red),
                quickNotification("Safe Now", Colors.green),
                quickNotification("Send Your Note", Colors.amber),
              ],
            ),
            Container(
                margin: EdgeInsets.only(left: 5),
                child: Image(
                  image: AssetImage("assets/images/maps.jpg"),
                )),
          ],
        ),
      ),
    );
  }

  Container quickNotification(String qNotification, MaterialColor colors) {
    return Container(
      margin: EdgeInsets.only(left: 8),
      child: FlatButton(
        child: Text(qNotification),
        onPressed: () {},
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: Color(0xFF37474F), width: 2, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(60)),
        splashColor: colors,
        highlightColor: colors,
      ),
    );
  }
}

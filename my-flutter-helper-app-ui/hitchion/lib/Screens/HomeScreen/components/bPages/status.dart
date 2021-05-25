import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  static final orgColor = Colors.black;
  var currentColor = orgColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Status'),
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
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  width: 4,
                  height: 80,
                  color: Color(0xFF37474F),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Passenger Statuses",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 5),
                      width: MediaQuery.of(context).size.width - 5,
                      child: Text(
                        "Track the road condition of your contacts...",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          passengersStatus(),
        ],
      ),
    );
  }
}

Expanded passengersStatus() {
  return Expanded(
    child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        passengerStatus("Dangerous situation. URGENT!", Colors.red),
        passengerStatus("Sent a secure status notification", Colors.green),
        passengerStatus("Sent a secure status notification", Colors.green),
      ],
    ),
  );
}

Widget passengerStatus(String nowStatus, MaterialColor colors) {
  return Container(
    color: colors,
    margin: EdgeInsets.only(bottom: 10),
    child: ListTile(
      title: Text(
        "Onur ŞAHİN",
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      subtitle: Text(nowStatus),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.person,
          color: Colors.black,
        ),
      ),
      trailing: IconButton(
        splashColor: Colors.amber,
        highlightColor: Colors.amber,
        icon: Icon(
          Icons.my_location,
          color: Colors.black,
          size: 25.0,
        ),
        onPressed: () {},
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:hitchion/constants.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('My contacts'),
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
            padding: EdgeInsets.only(left: 20, top: 25),
            child: Image.asset(
              'assets/icons/safe.png',
              color: safeIcon,
              width: 100,
            ),
          ),
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
                        "My contacts",
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
                        "Add your contacts and be aware of each other in case of emergency!",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text("My contacts")),
              Container(
                margin: EdgeInsets.only(right: 10, top: 10),
                child: FlatButton(
                  child: Text("Add contacts"),
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
              )
            ],
          ),
          contactUsers(),
        ],
      ),
    );
  }

  Expanded contactUsers() {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          contacUser(),
          contacUser(),
          contacUser(),
          contacUser(),
          contacUser(),
          contacUser(),
          contacUser(),
          contacUser(),
        ],
      ),
    );
  }

  ListTile contacUser() {
    return ListTile(
      title: Text(
        "Onur ŞAHİN",
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      subtitle: Text("imonursahin@gmail.com"),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.person),
      ),
      trailing: IconButton(
          splashColor: Colors.amber,
          highlightColor: Colors.amber,
          icon: Icon(
            Icons.delete_forever,
            color: contactsDelete,
            size: 25.0,
          ),
          onPressed: () {}),
    );
  }
}

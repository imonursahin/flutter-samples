import 'package:flutter/material.dart';
import 'package:hitchion/Screens/HomeScreen/components/bPages/status.dart';
import 'package:hitchion/Screens/HomeScreen/components/bPages/dashboard.dart';
import 'package:hitchion/Screens/HomeScreen/components/bPages/myroute.dart';
import 'package:hitchion/Screens/HomeScreen/components/bPages/contacts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Dashboard(),
    Status(),
    MyRoute(),
    Contacts(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_road),
        backgroundColor: Color(0xFF43A047),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Dashboard(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: currentTab == 0
                              ? Color(0xFF263238)
                              : Color(0xFF90A4AE),
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: currentTab == 0
                                ? Color(0xFF263238)
                                : Color(0xFF90A4AE),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            MyRoute(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person_pin_circle,
                          color: currentTab == 2
                              ? Color(0xFF263238)
                              : Color(0xFF90A4AE),
                        ),
                        Text(
                          'My route',
                          style: TextStyle(
                            color: currentTab == 2
                                ? Color(0xFF263238)
                                : Color(0xFF90A4AE),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Status(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.transfer_within_a_station,
                          color: currentTab == 1
                              ? Color(0xFF263238)
                              : Color(0xFF90A4AE),
                        ),
                        Text(
                          'Status',
                          style: TextStyle(
                            color: currentTab == 1
                                ? Color(0xFF263238)
                                : Color(0xFF90A4AE),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Contacts(); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person_add,
                          color: currentTab == 3
                              ? Color(0xFF263238)
                              : Color(0xFF90A4AE),
                        ),
                        Text(
                          'Contacts',
                          style: TextStyle(
                            color: currentTab == 3
                                ? Color(0xFF263238)
                                : Color(0xFF90A4AE),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

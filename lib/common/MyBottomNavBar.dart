import 'package:Timeline/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.only(top: 5, bottom: 10),
      color: Colors.blueGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              size: 45.0,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          IconButton(
            icon: Icon(CupertinoIcons.book_solid, size: 45.0),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/firstScreen');
            },
          ),
          IconButton(
            icon: Icon(CupertinoIcons.person_solid, size: 45.0),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/accountDetails');
            },
          )
        ],
      ),
    );
  }
}

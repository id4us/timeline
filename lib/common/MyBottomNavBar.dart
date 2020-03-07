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
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home,size: 22.0,),
            onPressed: (){
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          IconButton(
            icon: Icon(CupertinoIcons.book_solid, size: 22.0 ),
            onPressed: (){
              Navigator.pushReplacementNamed(context, '/firstScreen');
            },
          ),
          IconButton(
            icon: Icon(CupertinoIcons.person_solid, size: 22.0 ),
            onPressed: (){
              Navigator.pushReplacementNamed(context, '/accountDetails');
            },
          )

        ],

      ),
    );
  }
}

/**
    return new BottomNavigationBar(
    backgroundColor: Colors.blueGrey,
    items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Icon(
    Icons.home,
    color: Colors.black,
    ),
    title: Text('Home', style: Styles.boldText),
    ),
    BottomNavigationBarItem(
    icon: Icon(
    CupertinoIcons.book_solid,
    color: Colors.black,
    ),
    title: Text('My stories', style: Styles.boldText),
    ),
    BottomNavigationBarItem(
    icon: Icon(CupertinoIcons.person_solid, color: Colors.black),
    title: Text('My Account', style: Styles.boldText),
    ),
    ],
    );
 */

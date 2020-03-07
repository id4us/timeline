import 'package:Timeline/common/MyBottomNavBar.dart';
import 'package:Timeline/screens/login_page.dart';
import 'package:Timeline/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Timeline/authentication/sign_in.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: My Stories',
      style: optionStyle,
    ),
    Text(
      'Index 2: My Account',
      style: optionStyle,
    ),
  ];

  Widget _selectPage(int index) {
    _selectedIndex = index;
    if (_selectedIndex == 1) {
      return LoginPage();
    }
    return FirstScreen();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Welcome to your Timeline',
            style: Styles.boldText,
          ),
          backgroundColor: Colors.blueGrey,
          actions: <Widget>[signoutButton()],
        ),
        body: Container(
            color: Colors.white12,
            child: _widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar: MyBottomNavBar ());
  }

  Widget signoutButton() {
    return IconButton(
      icon: Icon(Icons.exit_to_app),
      tooltip: "Logout",
      splashColor: Colors.grey,
      onPressed: () {
        signOutGoogle();
        Text('you have been logged out');
      },
    );
  }
}

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
  get bottomAppBarContents => Row();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to your Timeline', style: Styles.boldText,),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[signoutButton()],
      ),
      body: Container(color: Colors.white12),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
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

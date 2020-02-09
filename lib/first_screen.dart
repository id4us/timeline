import 'package:Timeline/login_page.dart';
import 'package:flutter/material.dart';
import 'package:Timeline/authentication/sign_in.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to timeline'),
        actions: <Widget>[signoutButton()],
      ),
      body: Container(color: Colors.white12),
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

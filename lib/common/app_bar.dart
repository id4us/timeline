import 'package:Timeline/authentication/sign_in.dart';
import 'package:Timeline/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _MyAppBarState createState() => _MyAppBarState();

  @override
  Size get preferredSize =>  Size.fromHeight(40);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Welcome to your Timeline',
        style: Styles.headlineText,
      ),
      backgroundColor: Colors.blueGrey,
      actions: <Widget>[signoutButton()],
    );
  }

  Widget signoutButton() {
    return IconButton(
      icon: Icon(Icons.close),
      onPressed: () {
        signOutGoogle();
        Navigator.pushReplacementNamed(context, "/");
      },
    );
  }
}

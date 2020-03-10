import 'package:Timeline/common/MyBottomNavBar.dart';
import 'package:Timeline/common/app_bar.dart';
import 'package:Timeline/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyStoriesScreen extends StatefulWidget {
  @override
  _MyStoriesScreenState createState() => _MyStoriesScreenState();
}

class _MyStoriesScreenState extends State<MyStoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        left: true,
        maintainBottomViewPadding: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              clipBehavior: Clip.hardEdge,
              height: 100,
              child: Text("My Story 1 ",
                  style: Styles.boldText, textAlign: TextAlign.center),
              color: Colors.white,
            ),
            Container(
              clipBehavior: Clip.hardEdge,
              height: 100,
              child: Text("My Story 2 ", style: Styles.boldText),
              color: Colors.white,
            ),
            Container(
              height: 100,
              clipBehavior: Clip.hardEdge,
              child: Text("My Story 2 ", style: Styles.boldText),
              color: Colors.white,
            )
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(),
      floatingActionButton: IconButton(
        focusColor: Colors.blueGrey,
        icon: Icon(CupertinoIcons.add, size: 45.0),
        color: Colors.white,
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/firstScreen');
        },
      ),
    );
  }
}

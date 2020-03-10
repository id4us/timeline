import 'package:Timeline/common/MyBottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountDetails extends StatefulWidget {
  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
        child: Container(
          child: Text("Accounts page "),
          color: Colors.black12,
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(),

    );
  }
}

import 'package:flutter/material.dart';

class LoginUser extends StatefulWidget {
  @override
  _LoginUserState createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('SmarTest Login'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        ),
    );
  }
}
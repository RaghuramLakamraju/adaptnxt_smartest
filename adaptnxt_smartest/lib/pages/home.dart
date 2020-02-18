import 'package:flutter/material.dart';


class SmarTestHome extends StatefulWidget {
  @override
  _SmarTestHomeState createState() => _SmarTestHomeState();
}

class _SmarTestHomeState extends State<SmarTestHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Welcome to SmarTest !!!'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
    );  
  }
}
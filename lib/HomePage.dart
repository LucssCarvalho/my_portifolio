import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[banner()],
        ),
      ),
    );
  }
}

Widget banner() {
  return Stack(
    children: <Widget>[
      Container(
        alignment: AlignmentDirectional.center,
        height: 300,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.green, Colors.cyan[800]],
          ),
        ),
        child: image(),
      ),
    ],
  );
}

Widget image() {
  return CircleAvatar(
    backgroundColor: Colors.white,
    radius: 70.0,
    child: CircleAvatar(
      backgroundColor: Colors.green,
      radius: 66.0,
    ),
  );
}

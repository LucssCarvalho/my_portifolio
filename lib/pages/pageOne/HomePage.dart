import 'package:flutter/material.dart';
import 'package:my_portifolio/pages/pageOne/pageOne.dart';

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
        children: <Widget>[banner(), bio(), skills()],
      )),
    );
  }
}

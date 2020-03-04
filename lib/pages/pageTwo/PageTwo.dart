import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[cardProjet()],
        ),
      ),
    );
  }
}

Widget cardProjet() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: <Widget>[
        Container(
          alignment: AlignmentDirectional.center,
          height: 120,
          width: 120,
          color: Colors.green,
          child: Text('Project Image'),
        ),
      ],
    ),
  );
}

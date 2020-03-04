import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.green, Colors.cyan[800]],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Container(
              child: listContacts(),
            ),
          ),
        ),
      ),
    );
  }

  Widget listContacts() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          rowContats(Icons.mail, 'lucas.carvalhocco@gmail.com'),
          rowContats(Icons.phone_android, '(11) 98919-1313'),
        ],
      ),
    );
  }

  Widget rowContats(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  icon,
                  size: 30,
                  color: Colors.greenAccent[700],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(label),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

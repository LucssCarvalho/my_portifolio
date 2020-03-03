import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

Widget bio() {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
        child: Row(
          children: <Widget>[
            Text(
              'About Lucas',
              style: TextStyle(
                color: Colors.blueGrey[800],
                fontSize: 25,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
      Divider(),
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Container(
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
            style: TextStyle(
              color: Colors.blueGrey[800],
              fontSize: 15,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget skills() {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
        child: Row(
          children: <Widget>[
            Text(
              'Skills',
              style: TextStyle(
                color: Colors.blueGrey[800],
                fontSize: 25,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
      Divider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          chipLabel('Dart', Colors.greenAccent),
          chipLabel('Flutter', Colors.greenAccent),
          chipLabel('React', Colors.greenAccent[400]),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          chipLabel('JavaScript', Colors.greenAccent[400]),
          chipLabel('HTML + CSS', Colors.greenAccent[100]),
        ],
      ),
      Column(
        children: <Widget>[],
      ),
    ],
  );
}

Widget chipLabel(String labelName, Color colorData) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Chip(
      label: Text(labelName),
      backgroundColor: colorData,
    ),
  );
}

Widget image() {
  return Padding(
    padding: const EdgeInsets.only(top: 50.0),
    child: CircleAvatar(
      backgroundColor: Colors.white,
      radius: 70.0,
      child: Container(
        width: 190.0,
        height: 190.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/image.jpg'),
          ),
        ),
      ),
    ),
  );
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            image(),
            nameTitle(),
            // listIcons(),
          ],
        ),
      ),
    ],
  );
}

Widget iconSocial(MdiIconData iconName) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
    child: Icon(
      iconName,
      color: Colors.white,
      size: 25,
    ),
  );
}

Widget listIcons() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      iconSocial(Mdi.githubBox),
      iconSocial(Mdi.instagram),
    ],
  );
}

Widget nameTitle() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child: Text(
        'Lucas Carvalho',
        style: TextStyle(
            color: Colors.white, fontSize: 25, decoration: TextDecoration.none),
      ),
    ),
  );
}
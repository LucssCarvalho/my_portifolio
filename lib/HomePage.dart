import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:my_portifolio/pages/pageOne.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: buildPageView(),
      ),
    );
  }
}

Widget buildPageView() {
  return PageView(
    scrollDirection: Axis.horizontal,
    pageSnapping: true,
    physics: BouncingScrollPhysics(),
    children: <Widget>[
      pageOne(),
      pageTwo(),
      pageThree(),
    ],
    onPageChanged: (num) {
      print("Número da página atual : " + num.toString());
    },
  );
}

pageOne() {
  return Container(
    color: Colors.white,
    child: Column(
      children: <Widget>[banner(), bio(), skills()],
    ),
  );
}

pageTwo() {
  return Container(
    color: Colors.white,
  );
}

pageThree() {
  return Container(
    color: Colors.white,
  );
}

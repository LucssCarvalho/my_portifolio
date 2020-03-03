import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

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
            listIcons(),
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

Widget buildPageView() {
  return PageView(
    scrollDirection: Axis.horizontal,
    pageSnapping: true,
    physics: BouncingScrollPhysics(),
    children: <Widget>[
      Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            banner(),
            bio(),
          ],
        ),
      ),
      Container(
        color: Colors.blue,
      ),
    ],
    onPageChanged: (num) {
      print("Número da página atual : " + num.toString());
    },
  );
}

Widget bio() {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            Text(
              'Bio',
              style: TextStyle(
                color: Colors.blueGrey[800],
                fontSize: 25,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Container(
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 15,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget image() {
  return CircleAvatar(
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
  );
}

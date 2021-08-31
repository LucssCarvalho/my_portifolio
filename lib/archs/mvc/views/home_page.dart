import 'package:carvalho_app/archs/mvc/controllers/home_controller.dart';
import 'package:carvalho_app/archs/mvc/models/profile.dart';
import 'package:carvalho_app/archs/mvc/utils/constUrls.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: <Widget>[
            _bannerProfile(context),
            _bio(),
            Divider(),
            _skills(),
          ],
        )),
      ),
    );
  }

  Widget _bannerProfile(context) {
    return Stack(
      children: <Widget>[
        Container(
          alignment: AlignmentDirectional.center,
          height: 280,
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
              _image(),
              _nameTitle(),
              _listIcons(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _bio() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
          child: Row(
            children: <Widget>[
              Text(
                'Sobre',
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
          padding: const EdgeInsets.only(top: 10.0),
          child: FutureBuilder<Profile>(
              // future: homeController.getFirebaseProfile(),
              builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Text(snapshot.data.descript),
              );
            }
          }),
        ),
      ],
    );
  }

  Widget _skills() {
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            chipLabel('Dart', Colors.greenAccent[700]),
            chipLabel('Flutter', Colors.greenAccent[700]),
            chipLabel('React', Colors.greenAccent[400]),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            chipLabel('JavaScript', Colors.greenAccent[400]),
            chipLabel('HTML + CSS', Colors.greenAccent[400]),
            chipLabel('C#', Colors.greenAccent[100]),
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

  Widget _image() {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
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

  Widget _listIcons(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: InkWell(
            onTap: () {
              modalShet(context);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Contatos',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  modalShet(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) => Container(
        height: 180,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 5,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Contacts',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          homeController.launchURL(Urls.GIT);
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Mdi.githubBox,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          homeController.launchURL(Urls.LINKEDIN);
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Mdi.linkedin,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          homeController.launchURL(Urls.INSTAGRAM);
                        },
                        child: Container(
                          alignment: AlignmentDirectional.center,
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xFF833ab4),
                                  Color(0xFFfd1d1d),
                                  Color(0xFFfcb045)
                                ]),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Mdi.instagram,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _nameTitle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Text(
          'Lucas Carvalho',
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }
}

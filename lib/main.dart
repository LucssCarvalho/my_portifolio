import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_portifolio/pages/PageThree/PageThree.dart';
import 'package:my_portifolio/pages/pageOne/HomePage.dart';
import 'package:my_portifolio/pages/pageTwo/PageTwo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.green,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Tabbar(),
    );
  }
}

class Tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      size: 25,
                    ),
                    Text(
                      'My Page',
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
            ),
            Tab(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.work,
                      size: 25,
                    ),
                    Text(
                      'My projects',
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
            ),
            Tab(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.contact_phone,
                      size: 25,
                    ),
                    Text(
                      'My contacts',
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
            ),
          ],
          indicatorWeight: 2,
          labelStyle: TextStyle(fontSize: 10),
          unselectedLabelColor: Colors.grey[800],
          labelColor: Colors.greenAccent[700],
          indicatorColor: Colors.transparent,
        ),
        body: TabBarView(children: [HomePage(), PageTwo(), PageThree()]),
      ),
    );
  }
}

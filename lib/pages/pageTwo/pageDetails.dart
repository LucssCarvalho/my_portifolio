import 'package:flutter/material.dart';

class PageDetails extends StatefulWidget {
  final String title;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;
  final String colorCard;

  PageDetails(
    this.title,
    this.subtitle,
    this.author,
    this.publishDate,
    this.readDuration,
    this.colorCard,
  );

  @override
  _PageDetailsState createState() => _PageDetailsState();
}

class _PageDetailsState extends State<PageDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Column(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20),
              child: Container(
                child: Text(widget.subtitle),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20),
              child: Row(
                children: <Widget>[
                  Text(
                    'tags',
                  ),
                ],
              ),
            ),
            Container(
              height: 280,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage('assets/images/app_portifolio.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

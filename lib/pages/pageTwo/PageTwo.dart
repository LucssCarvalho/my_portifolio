import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_portifolio/helper/colorList.dart';
import 'package:my_portifolio/pages/pageTwo/pageDetails.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: StreamBuilder(
        stream: Firestore.instance.collection('projects').snapshots(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return CircularProgressIndicator();
              break;
            default:
              return Center(
                child: ListView(
                  padding: const EdgeInsets.all(10.0),
                  children: snapshot.data.documents
                      .map<Widget>((DocumentSnapshot doc) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => PageDetails(
                            doc.data['title'],
                            doc.data['bio'],
                            doc.data['author'],
                            doc.data['publishDate'],
                            doc.data['readDuration'],
                            doc.data['colorCard'],
                          ),
                        ),
                      ),
                      child: CustomListItemTwo(
                        thumbnail: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(''), fit: BoxFit.cover),
                          ),
                        ),
                        title: doc.data['title'],
                        subtitle: doc.data['bio'],
                        author: doc.data['author'],
                        publishDate: doc.data['publishDate'],
                        readDuration: doc.data['readDuration'],
                        colorCard: doc.data['colorCard'],
                      ),
                    );
                  }).toList(),
                ),
              );
          }
        },
      ),
    );
  }
}

class CustomListItemTwo extends StatelessWidget {
  CustomListItemTwo({
    Key key,
    this.thumbnail,
    this.title,
    this.subtitle,
    this.author,
    this.publishDate,
    this.readDuration,
    this.colorCard,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;
  final String colorCard;

  @override
  Widget build(BuildContext context) {
    final Color color = HexColor.fromHex(colorCard);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.dstATop),
            image: AssetImage('assets/images/card.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        height: 170,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

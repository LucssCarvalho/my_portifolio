// import 'package:carvalho_app/models/projectModal.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class PageTwo extends StatefulWidget {
//   @override
//   _PageTwoState createState() => _PageTwoState();
// }

// class _PageTwoState extends State<PageTwo> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: StreamBuilder(
//         stream: Firestore.instance.collection('projects').snapshots(),
//         builder: (BuildContext context, AsyncSnapshot snapshot) {
//           if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           }
//           switch (snapshot.connectionState) {
//             case ConnectionState.waiting:
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//               break;
//             default:
//               return Center(
//                 child: ListView(
//                   padding: const EdgeInsets.all(10.0),
//                   children: snapshot.data.documents
//                       .map<Widget>((DocumentSnapshot doc) {
//                     var projectModal = Project.fromDocument(doc);
//                     return GestureDetector(
//                       child: CustomListItemTwo(
//                         thumbnail: Container(
//                           decoration: const BoxDecoration(
//                             image: DecorationImage(
//                                 image: NetworkImage(''), fit: BoxFit.cover),
//                           ),
//                         ),
//                         title: projectModal.title,
//                         subtitle: projectModal.subTitle,
//                         author: projectModal.author,
//                         colorCard: doc.data['colorCard'],
//                       ),
//                     );
//                   }).toList(),
//                 ),
//               );
//           }
//         },
//       ),
//     );
//   }
// }

// class CustomListItemTwo extends StatelessWidget {
//   CustomListItemTwo({
//     Key key,
//     this.thumbnail,
//     this.title,
//     this.subtitle,
//     this.author,
//     this.colorCard,
//   }) : super(key: key);

//   final Widget thumbnail;
//   final String title;
//   final String subtitle;
//   final String author;

//   final String colorCard;

//   @override
//   Widget build(BuildContext context) {
//     // final Color color = HexColor.fromHex(colorCard);

//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.red,
//           image: DecorationImage(
//             colorFilter: new ColorFilter.mode(
//                 Colors.black.withOpacity(0.2), BlendMode.dstATop),
//             image: AssetImage('assets/images/card.png'),
//             fit: BoxFit.cover,
//           ),
//           borderRadius: BorderRadius.circular(15),
//         ),
//         height: 170,
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(
//                 title,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30,
//                 ),
//               ),
//               Text(
//                 subtitle,
//                 style: TextStyle(color: Colors.white),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

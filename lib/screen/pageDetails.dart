// import 'package:flutter/material.dart';
// import 'package:carvalhoapp/modal/projectModal.dart';

// class PageDetails extends StatefulWidget {
//   final Project projectModal;

//   PageDetails(this.projectModal);

//   @override
//   _PageDetailsState createState() => _PageDetailsState(projectModal);
// }

// class _PageDetailsState extends State<PageDetails> {
//   final Project projectModal;

//   _PageDetailsState(this.projectModal);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           color: Colors.white,
//           child: Padding(
//             padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   projectModal.title,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20.0, bottom: 20),
//                   child: Container(
//                     child: Text(
//                       projectModal.description,
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 15,
//                         decoration: TextDecoration.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: ListView.builder(
//                       itemCount: projectModal.images.length,
//                       itemBuilder: (context, index) {
//                         return Container(
//                           height: 280,
//                           width: 380,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15),
//                             image: DecorationImage(
//                                 image: NetworkImage(projectModal.images[index]),
//                                 fit: BoxFit.contain),
//                           ),
//                         );
//                       }),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: Row(
//                     children: <Widget>[
//                       IconButton(
//                         icon: Icon(
//                           Icons.arrow_back,
//                           color: Colors.green,
//                         ),
//                         onPressed: () {},
//                       ),
//                       Text(
//                         'Voltar',
//                         style: TextStyle(color: Colors.green),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';

class Profile {
  String title;
  String urlImage;

  Profile.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data());

  Profile.fromMap(Map<String, dynamic> map) {
    this.title = map['title'];
    this.urlImage = map['urlImage'];
  }
}

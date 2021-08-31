import 'package:cloud_firestore/cloud_firestore.dart';

class Profile {
  String descript;
  String urlImage;

  Profile.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data());

  Profile.fromMap(Map<String, dynamic> map) {
    this.descript = map['descript'];
    this.urlImage = map['urlImage'];
  }
}

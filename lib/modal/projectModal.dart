import 'package:cloud_firestore/cloud_firestore.dart';

class ProjectModal {
  String author;
  String colorCard;
  String description;
  List images;
  String title;
  String subTitle;

  ProjectModal.fromDocument(DocumentSnapshot snapshot) {
    author = snapshot.data["author"];
    colorCard = snapshot.data["colorCard"];
    description = snapshot.data["description"];
    images = snapshot.data["images"];
    title = snapshot.data["title"];
    subTitle = snapshot.data["subTitle"];
  }
}

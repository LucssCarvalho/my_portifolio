import 'package:carvalho_app/archs/modular/models/profile.dart';
import 'package:mobx/mobx.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final _firestoreCollection = FirebaseFirestore.instance.collection("profile");

  @action
  Future<Profile> getFirebaseProfile() async {
    var firebaseQuestions = await _firestoreCollection.get();

    return Profile.fromSnapshot(firebaseQuestions.docs.first);
  }

  @action
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

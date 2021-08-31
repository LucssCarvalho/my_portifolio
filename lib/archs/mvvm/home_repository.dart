import 'package:carvalho_app/archs/mvvm/profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeRepository {
  final CollectionReference fireStore;

  HomeRepository(this.fireStore);

  Future<Profile> getFirebaseProfile(CollectionReference fireCollection) async {
    var firebaseQuestions = await fireStore.get();

    return Profile.fromSnapshot(firebaseQuestions.docs.first);
  }
}

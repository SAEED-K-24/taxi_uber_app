import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:taxi_app/features/auth/domain/model/user.dart';

class FirestoreHelper {
  FirestoreHelper._();
  static FirestoreHelper firestoreHelper = FirestoreHelper._();

  Future<bool> isDuplicateUniqueName(String id) async {
    QuerySnapshot query = await firestore
        .collection('Users')
        .where('id', isEqualTo: id)
        .get();
    return query.docs.isNotEmpty;
  }

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  
  addNewUserToFirestore(User userModel) async {
    await firestore
        .collection('Users')
        .doc(userModel.id)
        .set(userModel.toJson());
  }

  Future<User?> getUsersFromFirestore(String id) async {
    DocumentSnapshot<Map<String, dynamic>> data =
        await firestore.collection('Users').doc(id).get();
    if (data.data() == null) {
      return null;
    }
    User userModel = User.fromJson(data.data()!);
    return userModel;
  }

  deleteUserFromFirestore(String id) async {
    firestore.collection('Users').doc(id).delete();
  }

  updateUserInFirestore(User userModel) async {
    firestore.collection('Users').doc(userModel.id).update(userModel.toJson());
  }
}

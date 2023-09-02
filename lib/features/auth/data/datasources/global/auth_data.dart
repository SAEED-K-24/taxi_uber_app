import 'package:firebase_auth/firebase_auth.dart';
import 'package:taxi_app/core/core.dart';
import 'package:taxi_app/helper/dialog_msg_helper.dart';

class FireAuthHelper {
  FireAuthHelper._();
  static FireAuthHelper fireAuthHelper = FireAuthHelper._();

  FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  Future<String?> register(String email, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!.uid;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        SnackbarMsgHelper.snackbarMsgHelper
            .showMsgHelper('The password provided is too weak.');
        throw PasswordIsWeakException();
      } else if (e.code == 'email-already-in-use') {
        SnackbarMsgHelper.snackbarMsgHelper
            .showMsgHelper('The account already exists for that email.');
        throw EmailIsAlreadyExistsException();
      }
    } catch (e) {
      SnackbarMsgHelper.snackbarMsgHelper.showMsgHelper('Error');
      print(e);
    }
    return null;
  }

  Future<String?> login(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user!.uid;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        SnackbarMsgHelper.snackbarMsgHelper
            .showMsgHelper('No user found for that email.');
        throw UserNotFoundException();
      } else if (e.code == 'wrong-password') {
        SnackbarMsgHelper.snackbarMsgHelper
            .showMsgHelper('Wrong password provided for that user.');
        throw PasswordIsWrongException();
      }
    }
    return null;
  }

  logOut() async {
    FirebaseAuth.instance.signOut();
  }
}

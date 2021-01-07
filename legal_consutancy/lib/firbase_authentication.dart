import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:legal_consutancy/widgets/navigator.dart';

class FirebaseAuthentication {
  FirebaseAuth auth = FirebaseAuth.instance;

  void firebaseSignUp(BuildContext context, String email, String password) async {
    try {
      final user = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
          if (user != null) {
        navigateToDashboard(context);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  void firebaseSignIn(BuildContext context, String email, String password) async {
    try {
      final user = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (user != null) {
        navigateToDashboard(context);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}

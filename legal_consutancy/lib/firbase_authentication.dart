import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:legal_consutancy/widgets/navigator.dart';

Future<bool> firebaseSignUp(
    BuildContext context, String email, String password) async {
  try {
    final user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return true;
    if (user != null) {
      navigateToDashboard(context);
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
    return false;
  } catch (e) {
    print(e);
    return false;
  }
}

Future<bool> firebaseSignIn(
    BuildContext context, String email, String password) async {
  try {
    final user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return true;
    if (user != null) {
      navigateToDashboard(context);
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
    return false;
  }
}

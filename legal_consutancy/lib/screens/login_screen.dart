import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:legal_consutancy/widgets/button.dart';
import 'package:legal_consutancy/widgets/navigator.dart';
import '../widgets/main_icon.dart';
import 'chats.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  String email;
  String password;

  bool isConsultantSelected = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          color: Color.fromRGBO(00, 69, 69, 1),
          //resizeToAvoidBottomPadding: false,
          child: SafeArea(
            child: Center(
              child: Column(
                children: <Widget>[
                  mainIcon(),
                  SizedBox(
                    height: 70.0,
                  ),
                  inputText('Email'),
                  inputText('Password'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'I am a Consultant',
                        style: TextStyle(fontSize: 12.0, color: Colors.white),
                      ),
                      Checkbox(
                        //checkColor: Colors.white,
                        value: isConsultantSelected,
                        onChanged: (value) {
                          setState(() {
                            isConsultantSelected = !isConsultantSelected;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  loginScreenButton(
                      context: context,
                      title: 'Login',
                      onPressed: () async {
                        try {
                          final user = await auth.signInWithEmailAndPassword(
                              email: email, password: password);
                          if (user != null && isConsultantSelected) {
                            checkConsultantExist(email);
                          } else if (user != null && !isConsultantSelected) {
                            checkUserExist(email);
                          }
                        } catch (e) {
                          print(e);
                        }
                      }),
                  SizedBox(
                    height: 8.0,
                  ),
                  loginScreenButton(
                      context: context,
                      title: 'Register',
                      onPressed: () {
                        navigateToSignUpScreen(context);
                      }),
                ],
              ),
            ),
          )),
    );
  }

  Widget inputText(String labelText) {
    return Container(
      padding: EdgeInsets.only(bottom: 8.0),
      width: 300.0,
      child: TextField(
        onChanged: (value) {
          if (labelText == 'Email') {
            email = value;
          } else if (labelText == 'Password') {
            password = value;
          }
        },
        decoration: InputDecoration(
          labelText: labelText,
          filled: true,
          fillColor: Color.fromRGBO(255, 255, 255, 1),
          hoverColor: Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
    );
  }

  Future<bool> checkUserExist(String docID) async {
    bool exists = false;
    try {
      await FirebaseFirestore.instance.doc("users/$docID").get().then((doc) {
        if (doc.exists) {
          navigateToDashboard(context);
          exists = true;
        } else {
          exists = false;
        }
      });
      return exists;
    } catch (e) {
      return false;
    }
  }

  Future<bool> checkConsultantExist(String docID) async {
    bool exists = false;
    try {
      await FirebaseFirestore.instance
          .doc("consultants/$docID")
          .get()
          .then((doc) {
        if (doc.exists) {
          Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Chats(isConsultant: true,)));
          exists = true;
        } else {
          exists = false;
        }
      });
      return exists;
    } catch (e) {
      return false;
    }
  }
}

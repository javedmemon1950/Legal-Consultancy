import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:legal_consutancy/widgets/button.dart';
import 'package:legal_consutancy/widgets/main_icon.dart';
import 'package:legal_consutancy/widgets/navigator.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  //FireBase
  FirebaseAuth auth = FirebaseAuth.instance;
  User currentUser = FirebaseAuth.instance.currentUser;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  
  //Input Fields Data
  String name;
  String password;
  String repeatPassword;
  String cnic;
  String email;
  String contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(00, 69, 69, 1),
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              mainIcon(),
              Text(
                'Sign Up',
                style: TextStyle(fontSize: 36.0, color: Colors.white),
              ),
              inputText('Name'),
              inputText('Email'),
              inputText('Password'),
              inputText('Re-Enter Password'),
              inputText('CNIC'),
              inputText('Contact'),
              loginScreenButton(
                  context: context,
                  title: 'Register',
                  onPressed: () async {
                    addUser();
                    if (password == repeatPassword)
                      try {
                        final user = await auth.createUserWithEmailAndPassword(
                            email: email, password: password);
                        if (user != null) {
                          navigateToDashboard(context);
                        }
                      } catch (e) {
                        print(e);
                      }
                  }),
            ],
          ),
        ),
      ),
    );
  }

  //Custom Input TextBox
  Widget inputText(String labelText) {
    return Container(
      padding: EdgeInsets.only(bottom: 8.0),
      width: 300.0,
      child: TextField(
        onChanged: (value) {
          if (labelText == 'Name') {
            name = value;
          } else if (labelText == 'Email') {
            email = value;
          } else if (labelText == 'Password') {
            password = value;
          } else if (labelText == 'Re-Enter Password') {
            repeatPassword = value;
          } else if (labelText == 'CNIC') {
            cnic = value;
          } else if (labelText == 'Contact') {
            contact = value;
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

  //Adding user data on FireStore
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Future<void> addUser() {
    return users
        .doc(email)
        .set({
          'name': name,
          'email': email,
          'cnic': cnic,
          'contact': contact,
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}

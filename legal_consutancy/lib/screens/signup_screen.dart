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
  String qualification;
  String experience;
  String description;

  bool isConsultant = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(00, 69, 69, 1),
      resizeToAvoidBottomPadding: true,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                mainIcon(),
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 36.0, color: Colors.white),
                ),
                //Is Consultant
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I am a Consultant',
                      style: TextStyle(fontSize: 12.0, color: Colors.white),
                    ),
                    Checkbox(
                      //checkColor: Colors.white,
                      value: isConsultant,
                      onChanged: (value) {
                        setState(() {
                          isConsultant = !isConsultant;
                        });
                      },
                    ),
                  ],
                ),
                inputText('Name'),
                inputText('Email'),
                inputText('Password'),
                inputText('Re-Enter Password'),
                inputText('CNIC'),
                inputText('Contact'),
                if (isConsultant)
                  Column(
                    children: [
                      inputText('Qualification'),
                      inputText('Experience'),
                      inputText('Description'),
                    ],
                  ),
                loginScreenButton(
                    context: context,
                    title: 'Register',
                    onPressed: () async {
                      isConsultant ? addConsultant() : addUser();
                      if (password == repeatPassword)
                        try {
                          final user =
                              await auth.createUserWithEmailAndPassword(
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
          } else if (labelText == 'Qualification') {
            qualification = value;
          } else if (labelText == 'Experience') {
            experience = value;
          } else if (labelText == 'Decription') {
            description = value;
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
  CollectionReference consultants =
      FirebaseFirestore.instance.collection('consultants');
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

  Future<void> addConsultant() {
    return consultants
        .doc(email)
        .set({
          'name': name,
          'email': email,
          'cnic': cnic,
          'contact': contact,
          'qualification': qualification,
          'experience': experience,
          'description': description
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}

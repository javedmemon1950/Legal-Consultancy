import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:legal_consutancy/widgets/button.dart';
import 'package:legal_consutancy/widgets/navigator.dart';
import '../widgets/main_icon.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  String email;
  String password;

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
                          if (user != null) {
                            navigateToDashboard(
                              context,
                            );
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
}

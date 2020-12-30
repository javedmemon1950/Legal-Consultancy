import 'package:flutter/material.dart';
import 'package:legal_consutancy/widgets/main_icon.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

Widget inputText(String str) {
  return Container(
    width: 300.0,
    child: TextField(
      decoration: InputDecoration(
        labelText: str,
        filled: true,
        fillColor: Color.fromRGBO(255, 255, 255, 1),
        hoverColor: Color.fromRGBO(255, 255, 255, 1),
      ),
    ),
  );
}

class _SignupScreenState extends State<SignupScreen> {
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
                style: TextStyle(fontSize: 36.0,
                color: Colors.white),
              ),
              SizedBox(
                height: 8.0,
              ),
              inputText('Name'),
              SizedBox(
                height: 8.0,
              ),
              inputText('Email'),
              SizedBox(
                height: 8.0,
              ),
              inputText('Password'),
              SizedBox(
                height: 8.0,
              ),
              inputText('Re-Enter Password'),
              SizedBox(
                height: 8.0,
              ),
              inputText('CNIC'),
            ],
          ),
        ),
      ),
    );
  }
}

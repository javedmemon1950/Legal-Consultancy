import 'package:flutter/material.dart';
import 'package:legal_consutancy/widgets/button.dart';
import 'package:legal_consutancy/widgets/main_icon.dart';

import '../firbase_authentication.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

Widget inputText(String str, TextEditingController et) {
  return Container(
    width: 300.0,
    child: TextField(
      controller: et,
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
  TextEditingController et_name = TextEditingController();
  TextEditingController et_password = TextEditingController();
  TextEditingController et_repeatpassword = TextEditingController();
  TextEditingController et_cnic = TextEditingController();
  TextEditingController et_email = TextEditingController();

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
              SizedBox(
                height: 8.0,
              ),
              inputText('Name', et_name),
              SizedBox(
                height: 8.0,
              ),
              inputText('Email', et_email),
              SizedBox(
                height: 8.0,
              ),
              inputText('Password', et_password),
              SizedBox(
                height: 8.0,
              ),
              inputText('Re-Enter Password', et_repeatpassword),
              SizedBox(
                height: 8.0,
              ),
              inputText('CNIC', et_cnic),
              SizedBox(
                height: 8.0,
              ),
              //loginScreenButton('Register', context, true),
            ],
          ),
        ),
      ),
    );
  }
}

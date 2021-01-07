import 'package:flutter/material.dart';
import 'package:legal_consutancy/widgets/button.dart';
import '../widgets/main_icon.dart';
import '../widgets/input_text_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController etEmail = TextEditingController();
  TextEditingController etPassword = TextEditingController();

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
                  customInputField(data: 'Email', visible: false, et: etEmail),
                  SizedBox(
                    height: 8.0,
                  ),
                  customInputField(
                      data: 'Password', visible: true, et: etPassword),
                  FlatButton(
                    onPressed: () => {},
                    //width: 300.0,
                    child: Text(
                      'Forgot Password?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  loginScreenButton('Login', context, true),
                  SizedBox(
                    height: 8.0,
                  ),
                  loginScreenButton('Register', context, false),
                ],
              ),
            ),
          )),
    );
  }
}

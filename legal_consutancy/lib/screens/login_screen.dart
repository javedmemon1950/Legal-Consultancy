import 'package:flutter/material.dart';
import 'package:legal_consutancy/screens/consultant_list.dart';
import 'package:legal_consutancy/screens/consultant_profile.dart';
import 'package:legal_consutancy/screens/signup_screen.dart';
import 'dashboard.dart';
import '../widgets/main_icon.dart';
import '../widgets/input_text_field.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
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

              SizedBox(height: 70.0,),
              
              customInputField(data: 'Login', visible: true,),
              
              SizedBox(height: 8.0,),

              customInputField(data: 'Password',visible: true,),
              
              Container(
                width: 300.0,
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: 24.0,),

              loginScreenButton('Email'),
              
              SizedBox(height: 8.0,),

              loginScreenButton('Register'),
            ],
          ),
        ),
      ),
    );
  }


  Widget loginScreenButton(String str) {
    return RaisedButton(
      onPressed: () {
        if (str == 'Sign In')
          _navigateToNextScreen1(context);
        else if (str == 'Register') _navigateToNextScreen2(context);
      },
      textColor: Colors.black,
      color: Colors.white,
      padding: const EdgeInsets.all(0.0),
      child: Container(
        alignment: Alignment.center,
        child: Text(str),
        width: 200.0,
        height: 50.0,
      ),
    );
  }

  void _navigateToNextScreen1(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Dashboard()));
  }

  void _navigateToNextScreen2(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => signupScreen()));
  }
}
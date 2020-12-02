import 'package:flutter/cupertino.dart'
    show
        AssetImage,
        BuildContext,
        Column,
        Container,
        EdgeInsets,
        Image,
        Padding,
        State,
        StatefulWidget,
        Widget;
import 'package:flutter/material.dart';
import 'package:legal_consutancy/screens/signup_screen.dart';
import 'dashboard.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final Icon = Padding(
      padding: const EdgeInsets.all(16.0),
      child: Image(
        image: AssetImage('assets/logo.png'),
        width: 300,
      ));

  Widget loginScreenTextField(String str, bool visible) {
    return Container(
      width: 300.0,
      child: TextField(
        obscureText: visible,
        decoration: InputDecoration(
          labelText: 'Email',
          filled: true,
          fillColor: Color.fromRGBO(255, 255, 255, 1),
          hoverColor: Color.fromRGBO(255, 255, 255, 1),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(00, 69, 69, 1),
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Icon,
              SizedBox(
                height: 70.0,
              ),
              loginScreenTextField('Email', false),
              SizedBox(
                height: 8.0,
              ),
              loginScreenTextField('Password', true),
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
              SizedBox(
                height: 24.0,
              ),
              loginScreenButton('Sign In'),
              SizedBox(
                height: 8.0,
              ),
              loginScreenButton('Register'),
            ],
          ),
        ),
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

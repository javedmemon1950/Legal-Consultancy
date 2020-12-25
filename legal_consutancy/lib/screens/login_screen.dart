import 'package:flutter/material.dart';
import 'package:legal_consutancy/screens/signup_screen.dart';
import 'package:legal_consutancy/widgets/button.dart';
import 'package:legal_consutancy/widgets/navigator.dart';
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
    return Material(
      child: Container(
      color: Color.fromRGBO(00, 69, 69, 1),
      //resizeToAvoidBottomPadding: false,
      child: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              mainIcon(),

              SizedBox(height: 70.0,),
              
              customInputField(data: 'Email', visible: true,),
              
              SizedBox(height: 8.0,),

              customInputField(data: 'Password',visible: false,),
              
              FlatButton(
                onPressed: ()=>{},
                //width: 300.0,
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: 24.0,),

              loginScreenButton('Login',context),
              
              SizedBox(height: 8.0,),

              loginScreenButton('Register',context),
            ],
          ),
        ),
      )
    ),
    );
  }
}
import 'package:flutter/material.dart';

class UpdateProfileScreen extends StatefulWidget {
  @override
  _UpdateProfileScreenState createState() => _UpdateProfileScreenState();
}

Widget inputText(String str){
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

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(00, 69, 69, 1),
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Sign Up',
              style: TextStyle(
                fontSize: 36.0
              ),
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

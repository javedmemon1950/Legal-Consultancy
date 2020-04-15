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

  final Email = Container(
    width: 300.0,
    child: TextField(
    decoration: InputDecoration(
      labelText: 'Email',
      filled: true,
      fillColor: Color.fromRGBO(255, 255, 255, 1),
      hoverColor: Color.fromRGBO(255, 255, 255, 1),
    ),
  ),
  );

  final Password = Container(
    width: 300.0,
    child: TextField(
    obscureText: true,
    decoration: InputDecoration(
      labelText: 'Password',
      filled: true,
      fillColor: Color.fromRGBO(255, 255, 255, 1),
      hoverColor: Color.fromRGBO(255, 255, 255, 1),
    ),
  ),);

  final LoginBtn = RaisedButton(
          onPressed: () {},
          textColor: Colors.black,
          color: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            alignment: Alignment.center,
            child: Text('Login'),
            width: 200.0,
            height: 50.0,),
  );

  final SignupBtn = null;

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
              Email,
              SizedBox(
                height: 8.0,
              ),
              Password,
              SizedBox(
                height: 24.0,
              ),
              LoginBtn,
              SizedBox(
                height: 8.0,
              ),
              LoginBtn,
            ],
          ),
        ),
      ),
    );
  }
}
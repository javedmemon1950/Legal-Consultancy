import 'package:flutter/material.dart';
import 'navigator.dart';

Widget customButton({Widget data, Function function}) {
  return RaisedButton(
    onPressed: function,
    textColor: Colors.black,
    color: Colors.white,
    padding: const EdgeInsets.all(0.0),
    child: Container(
      alignment: Alignment.center,
      child: data,
      width: 200.0,
      height: 50.0,
    ),
  );
}

Widget loginScreenButton(String buttonName, BuildContext context,bool boolean) {
    return RaisedButton(
      onPressed: () {
        if (buttonName == 'Login')
        {
          if(boolean)
          navigateToDashboard(context);
        }
        else if (buttonName == 'Register') 
        {
          navigateToSignUpScreen(context);
        }
      },
      textColor: Colors.black,
      color: Colors.white,
      padding: const EdgeInsets.all(0.0),
      child: Container(
        alignment: Alignment.center,
        child: Text(buttonName),
        width: 200.0,
        height: 50.0,
      ),
    );
  }

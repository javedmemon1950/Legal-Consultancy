import 'package:flutter/material.dart';

Widget customScreenButton(String str) {
    return RaisedButton(
      onPressed: (){},
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
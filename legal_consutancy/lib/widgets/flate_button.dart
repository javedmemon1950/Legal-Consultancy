import 'package:flutter/material.dart';

Widget flateButton(String str) {
  return FlatButton(
    child: Text(
      str,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}

import 'package:flutter/material.dart';

Widget flatButton(String str) {
  return Container(
    width: 300.0,
    child: Text(
      str,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}

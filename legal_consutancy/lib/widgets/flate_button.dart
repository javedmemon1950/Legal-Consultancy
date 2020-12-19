import 'package:flutter/material.dart';

Widget customFlateButton({String data, Function function}) {
  return FlatButton(
    onPressed: function,
    child: Text(
      data,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}

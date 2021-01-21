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

Widget loginScreenButton(
    {String title, BuildContext context, Function onPressed}) {
  return RaisedButton(
    onPressed: onPressed,
    textColor: Colors.black,
    color: Colors.white,
    padding: const EdgeInsets.all(0.0),
    child: Container(
      alignment: Alignment.center,
      child: Text(title),
      width: 200.0,
      height: 50.0,
    ),
  );
}

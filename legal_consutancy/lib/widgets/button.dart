import 'package:flutter/material.dart';

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

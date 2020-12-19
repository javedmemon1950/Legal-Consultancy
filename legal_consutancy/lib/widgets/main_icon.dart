import 'package:flutter/material.dart';

Widget mainIcon(){
  return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Image(
        image: AssetImage('assets/logo.png'),
        width: 300,
      ));
}
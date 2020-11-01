import 'package:flutter/material.dart';

Widget textInputField(String str, bool visible, TextEditingController et) {
    return Container(
      width: 300.0,
      child: TextField(
        controller: et,
        obscureText: visible,
        decoration: InputDecoration(
          labelText: 'Email',
          filled: true,
          fillColor: Color.fromRGBO(255, 255, 255, 1),
          hoverColor: Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
    );
  }
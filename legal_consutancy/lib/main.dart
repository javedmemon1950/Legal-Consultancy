import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';
import 'signup.dart';
import 'main_screen.dart';
import 'consultant_profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Legal Consultancy',
      home: loginScreen(),
      //home: consultantProfile(),
    );
  }
}



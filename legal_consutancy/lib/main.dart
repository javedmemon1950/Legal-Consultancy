import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:legal_consutancy/prifile_screen.dart';
import 'login.dart';
import 'signup.dart';
import 'main_screen.dart';

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
    );
  }
}



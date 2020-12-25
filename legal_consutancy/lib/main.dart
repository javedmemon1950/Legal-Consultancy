import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:legal_consutancy/screens/login_screen.dart';
import 'screens/dashboard.dart';

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

import 'package:flutter/material.dart';
import 'package:legal_consutancy/screens/message.dart';
import '../screens/dashboard.dart';
import '../screens/consultant_list.dart';
import '../screens/consultant_profile.dart';
import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';

void navigateToDashboard(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => Dashboard()));
}

void navigateToSignUpScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => SignupScreen()));
}

void navigateToConsultantList(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => ConsultantList()));
}

void navigateToConsultantProfile(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => ConsultantProfile()));
}

void navigateToLoginScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => LoginScreen()));
}

void navigateToMessageScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => MessageScreen()));
}
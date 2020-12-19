import 'package:flutter/material.dart';
import '../screens/dashboard.dart';
import '../screens/consultant_list.dart';
import '../screens/consultant_profile.dart';
import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';

void _navigateToDashboard(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => Dashboard()));
}

void _navigateToSignUpScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => signupScreen()));
}

void _navigateToConsultantList(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => ConsultantList()));
}

void _navigateToConsultantProfile(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => ConsultantProfile()));
}

void _navigateToLoginScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => loginScreen()));
}

import 'package:flutter/material.dart';
import 'package:legal_consutancy/screens/chats.dart';
import 'package:legal_consutancy/screens/message.dart';
import 'package:legal_consutancy/screens/update_user_profile.dart';
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

// void navigateToConsultantList(BuildContext context) {
//   Navigator.of(context)
//       .push(MaterialPageRoute(builder: (context) => ConsultantList()));
// }

void navigateToConsultantProfile(BuildContext context, String consultantReference) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => ConsultantProfile(email: consultantReference,)));
}

void navigateToLoginScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => LoginScreen()));
}

void navigateToMessageScreen(BuildContext context,{consultantEmail,userEmail}) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => MessageScreen(consultantEmail: consultantEmail,userEmail: userEmail,)));
}

void navigateToUpdateProfile(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => UpdateProfileScreen()));
}

void navigateToInbox(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => Chats()));
}
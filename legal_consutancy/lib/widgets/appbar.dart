import 'package:flutter/material.dart';
import 'package:legal_consutancy/screens/chats.dart';
import 'package:legal_consutancy/widgets/navigator.dart';

Widget myAppBar(String title, BuildContext context) {
  return AppBar(
    title: Text(title),
    backgroundColor: Color.fromRGBO(00, 69, 69, 1),
    automaticallyImplyLeading: false,
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.dashboard,
          color: Colors.white,
        ),
        onPressed: () {
          navigateToDashboard(context);
        },
      ),
      IconButton(
        icon: Icon(
          Icons.supervised_user_circle,
          color: Colors.white,
        ),
        onPressed: () {
          navigateToUpdateProfile(context);
        },
      ),
      IconButton(
        icon: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Chats(isConsultant: false,)));
        },
      ),
      IconButton(
        icon: Icon(
          Icons.exit_to_app,
          color: Colors.white,
        ),
        onPressed: () {
          navigateToLoginScreen(context);
        },
      ),
    ],
  );
}

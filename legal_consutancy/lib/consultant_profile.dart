import 'package:flutter/material.dart';

class consultantProfile extends StatefulWidget {
  @override
  _consultantProfileState createState() => _consultantProfileState();
}

class _consultantProfileState extends State<consultantProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 105, 105, 1),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image(
                  image: AssetImage('assets/avatar_icon.png'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

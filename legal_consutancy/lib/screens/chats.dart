import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image(
                    image: AssetImage('assets/avatar_icon.png'),
                  ),
                ),
                Column(
                  children: [
                    Text("Username"),
                    Text("Last Message"),                   
                  ],
                ),
                Text("Date or Time")
              ],
            )
          ],
        ),
      ),
    );
  }
}
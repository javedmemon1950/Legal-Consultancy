import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chats'),),
      body: Container(
        child: ListView(
          children: [
            chatListItem(),
            chatListItem(),
            chatListItem(),
            chatListItem(),
            chatListItem(),
            chatListItem(),
          ],
        ),
      ),
    );
  }

  Widget chatListItem() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Image(
              image: AssetImage('assets/avatar_icon.png'),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Username",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("Last Message"),
              ],
            ),
          ),
          Text("Date or Time")
        ],
      ),
    );
  }
}

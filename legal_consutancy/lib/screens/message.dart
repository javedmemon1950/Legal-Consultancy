import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message'),
        backgroundColor: Color.fromRGBO(00, 69, 69, 1),
      ),
      body: Column(
        children: [
          senderMessage('Hello sir'),
          reciverMessage('Hello'),
          senderMessage('I am business man, I need ur help'),
          reciverMessage('What is the issue'),
          senderMessage('Hello sir, ashdkjas ajshdkja kasjhka'),
        ],
      ),
    );
  }

  Widget reciverMessage(String message) {
    return ChatBubble(
      clipper: ChatBubbleClipper1(type: BubbleType.receiverBubble),
      backGroundColor: Color(0xffE7E7ED),
      margin: EdgeInsets.only(top: 20),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Text(
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Widget senderMessage(String message) {
    return ChatBubble(
      clipper: ChatBubbleClipper1(type: BubbleType.sendBubble),
      alignment: Alignment.topRight,
      margin: EdgeInsets.only(top: 20),
      backGroundColor: Colors.blue,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

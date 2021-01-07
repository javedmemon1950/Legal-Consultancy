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
        title: Text('Messages'),
        backgroundColor: Color.fromRGBO(00, 69, 69, 1),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              senderMessage('Hello sir'),
              reciverMessage('Hello'),
              senderMessage('I am business man, I need ur help'),
              reciverMessage('What is the issue'),
              senderMessage('Hello sir, ashdkjas ajshdkja kasjhka'),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.90,
            child: TextFormField(
              
            ),
          )
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
          //"Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
          message,
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
      backGroundColor: Color.fromRGBO(00, 69, 69, 0.8),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Text(
          //"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          message,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

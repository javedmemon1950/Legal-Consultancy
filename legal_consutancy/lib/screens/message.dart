import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';

class MessageScreen extends StatefulWidget {
  MessageScreen({this.isConsultant, this.userEmail, this.consultantEmail});
  bool isConsultant;
  var userEmail;
  var consultantEmail;
  @override
  _MessageScreenState createState() => _MessageScreenState(
      userEmail: userEmail, consultantEmail: consultantEmail);
}

class _MessageScreenState extends State<MessageScreen> {
  _MessageScreenState({this.userEmail, this.consultantEmail});
  User user = FirebaseAuth.instance.currentUser;
  var userEmail;
  var consultantEmail;
  bool isConsultant = false;

  TextEditingController et_message = TextEditingController();
  String messageTyped;

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
//                getMessageNo(),
                fetchMessages(),
                Container(
        //margin: EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(00, 69, 69, .1),
                borderRadius: BorderRadius.circular(5.0),
              ),
              margin: EdgeInsets.only(left: 8, top: 8),
              width: MediaQuery.of(context).size.width * 0.83,
              child: TextFormField(
                controller: et_message,
                onChanged: (value) {
        messageTyped = value;
                },
                maxLines: 3,
                minLines: 1,
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                et_message.clear();
                sendMessage(messageTyped);
              },
            )
          ],
        ),
                ),
              ],
            ));
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
          message,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  fetchMessages() {
    CollectionReference conversation = FirebaseFirestore.instance
        .collection('chats')
        .doc('${userEmail}to$consultantEmail')
        .collection('messages');

    return StreamBuilder<QuerySnapshot>(
      stream: conversation.orderBy('datentime',descending: true).snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return Expanded(
                  child: ListView(
                    reverse: true,
                  children: snapshot.data.docs.map((DocumentSnapshot document) {
                    return document.data()['sender'] == user.email
                        ? senderMessage(document.data()['text'])
                        : reciverMessage(document.data()['text']);
                  }).toList(),
                ),
              );
            },
          );
        }

  sendMessage(String message) {
    CollectionReference chats = FirebaseFirestore.instance.collection('chats');

    chats.doc('${userEmail}to$consultantEmail').set({
      'user': userEmail,
      'consultant': consultantEmail,
      'lastMessage': message,
      'datentime': Timestamp.now().millisecondsSinceEpoch
    });

    chats
        .doc('${userEmail}to$consultantEmail')
        .collection("messages")
        .doc()
        .set({
      'text': message,
      'sender': user.email,
      'datentime': Timestamp.now().millisecondsSinceEpoch
    });
  }
}

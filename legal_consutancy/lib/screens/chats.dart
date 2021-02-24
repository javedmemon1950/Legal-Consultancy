import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:legal_consutancy/widgets/navigator.dart';

class Chats extends StatefulWidget {
  Chats({this.isConsultant});
  bool isConsultant = false;
  @override
  _ChatsState createState() => _ChatsState(isConsultant: isConsultant);
}

class _ChatsState extends State<Chats> {
  _ChatsState({this.isConsultant});
  bool isConsultant = false;
  User user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        backgroundColor: Color.fromRGBO(00, 69, 69, 1),
      ),
      body: Container(
        child: fetchChats(),
        // child: RaisedButton(
        //   onPressed: () {
        //     print(isConsultant);
        //   },
        // ),
      ),
    );
  }

  fetchChats() {
    CollectionReference chats = FirebaseFirestore.instance.collection('chats');
    return StreamBuilder<QuerySnapshot>(
      stream: chats.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          children: snapshot.data.docs.map((DocumentSnapshot document) {
            return ListTile(
              onTap: () {
                navigateToMessageScreen(context,
                    consultantEmail: document.data()['consultant'],
                    userEmail: document.data()['user']);
              },
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image(
                  image: AssetImage('assets/avatar_icon.png'),
                ),
              ),
              title: isConsultant
                  ? Text(document.data()['user'])
                  : Text(document.data()['consultant']),
              subtitle: Text(document.data()['lastMessage']),
            );
          }).toList(),
        );
      },
    );
  }
}

// Widget chatListItem() {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         CircleAvatar(
//           backgroundColor: Colors.white,
//           child: Image(
//             image: AssetImage('assets/avatar_icon.png'),
//           ),
//         ),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Username",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Text("Last Message"),
//             ],
//           ),
//         ),
//         Text("Date or Time")
//       ],
//     ),
//   );
// }

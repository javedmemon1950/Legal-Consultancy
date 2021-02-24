import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:legal_consutancy/widgets/navigator.dart';

class ConsultantProfile extends StatefulWidget {
  ConsultantProfile({this.email});
  String email;

  @override
  _ConsultantProfileState createState() =>
      _ConsultantProfileState(consultantEmail: email);
}

class _ConsultantProfileState extends State<ConsultantProfile> {
  _ConsultantProfileState({this.consultantEmail});
  User user = FirebaseAuth.instance.currentUser;
  String consultantEmail;

  @override
  void initState() {
    super.initState();
    fetchConsultantData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color.fromRGBO(00, 69, 69, 1),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color.fromRGBO(0, 105, 105, 1),
      body: SafeArea(child: fetchConsultantData()),
    );
  }

  fetchConsultantData() {
    CollectionReference users =
        FirebaseFirestore.instance.collection('consultants');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(consultantEmail).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          return Container(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(24),
                    width: 100,
                    height: 100,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image(
                        image: AssetImage('assets/avatar_icon.png'),
                      ),
                    ),
                  ),
                  Text(
                    "Name: ${data['name']}",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Email: ${data['email']}",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Qualification: ${data['qualification']}",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "${data['description']}",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                  RaisedButton(
                    onPressed: () => {
                      print(consultantEmail),
                      print(user.email),
                      navigateToMessageScreen(context,
                          consultantEmail: consultantEmail,
                          userEmail: user.email),
                    },
                    child: Text("Chat Now"),
                  )
                ],
              ),
            ),
          );
          //return Text("Full Name: ${data['name']} ${data['email']}");
        }

        return Text("loading");
      },
    );
  }
}

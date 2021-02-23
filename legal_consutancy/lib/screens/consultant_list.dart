import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:legal_consutancy/widgets/navigator.dart';

class ConsultantList extends StatefulWidget {
  @override
  _ConsultantListState createState() => _ConsultantListState();
}

class _ConsultantListState extends State<ConsultantList> {
  //Firestore Instance
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Widget consultantListItem(
      {String name,
      String email,
      String image,
      String qualification,
      String experience,
      String description,
      BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 8),
        color: Colors.grey[200],
        elevation: 2,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Image.asset(
                'assets/avatar_icon.png',
                width: 100,
                height: 120,
              ),
            ),
            Column(
              children: [
                Text("Name: $name", style: TextStyle(fontSize: 20.0)),
                Text("Qualifition: $qualification", style: TextStyle(fontSize: 15.0)),
                Text("Experience: $experience years", style: TextStyle(fontSize: 15.0)),
                RaisedButton(
                    onPressed: () => {
                      //print(name),
                      navigateToConsultantProfile(context,email)
                    },
                    child: Text("Visit Profile")),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consultants'),
        backgroundColor: Color.fromRGBO(00, 69, 69, 1),
        automaticallyImplyLeading: false,
      ),
      body: fetchConsultantList(context)
    );
  }

  fetchConsultantList(BuildContext context) {
    CollectionReference consultants = FirebaseFirestore.instance.collection('consultants');

    return StreamBuilder<QuerySnapshot>(
      stream: consultants.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return Container(
          child: new ListView(
            children: snapshot.data.docs.map((DocumentSnapshot document) {             
              return consultantListItem(
                 name: document.data()['name'],
                 email: document.data()['email'],
                 qualification: document.data()['qualification'],
                 experience: document.data()['experience'].toString(),
                context: context);
            }).toList(),
          ),
        );
      },
    );
  }
}
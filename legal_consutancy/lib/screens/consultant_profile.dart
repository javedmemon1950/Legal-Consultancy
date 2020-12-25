import 'package:flutter/material.dart';
import 'package:legal_consutancy/screens/message.dart';
import 'package:legal_consutancy/widgets/navigator.dart';

class ConsultantProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 105, 105, 1),
      body: SafeArea(
        child: SingleChildScrollView(
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
              ),
              Text(
                  "What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? What is Lorem Ipsum? "),
              Text("data: data"),
              Text("data: data"),
              Text("data: data"),
              RaisedButton(
                onPressed: ()=>{
                  navigateToMessageScreen(context)
                },
                child: Text("data"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

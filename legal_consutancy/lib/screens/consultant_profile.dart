import 'package:flutter/material.dart';
import 'package:legal_consutancy/widgets/navigator.dart';

class ConsultantProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color.fromRGBO(00, 69, 69, 1),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color.fromRGBO(0, 105, 105, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
                  "I am a trained Lawyer with over 5 years of experience in drafting, re-writing and reviewing different legal contracts, agreements from my clients locally and internationally.Unlike most writers, let a professional Lawyer like me handle the job of ensuring the legal needs of your business, websites and apps are properly catered for.I look forward to receiving your requests and messages. Let's have a wonderful and satisfying experience here on fiverr. CONTACT NOW!!!",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "data: data",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "data: data",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "data: data",
                  style: TextStyle(color: Colors.white),
                ),
                RaisedButton(
                  onPressed: () => {navigateToMessageScreen(context)},
                  child: Text("data"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

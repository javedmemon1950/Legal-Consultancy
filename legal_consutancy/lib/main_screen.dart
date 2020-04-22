import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreenOfApp extends StatefulWidget {
  @override
  _MainScreenOfAppState createState() => _MainScreenOfAppState();
}

class _MainScreenOfAppState extends State<MainScreenOfApp> {
  @override
  Widget build(BuildContext context) {
    Widget catagoriesListItem(String str) {
      return Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          //color: Color.fromRGBO(00, 69, 69, 1),
          color: Color.fromRGBO(0,105,105,1),
          borderRadius: BorderRadius.circular(25.0)
        ),
        margin: EdgeInsets.all(4.0),
        child: ListTile(
          leading: Text(
            str,
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(
            Icons.arrow_right,
            color: Colors.white,
          ),
        ),
      );
    }

    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        backgroundColor: Color.fromRGBO(00, 69, 69, 1),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: catagoriesListItem('Banking')),
          Expanded(child: catagoriesListItem('Business')),
          Expanded(child: catagoriesListItem('Civil')),
          Expanded(child: catagoriesListItem('Criminal')),
          Expanded(child: catagoriesListItem('Cyber Crime')),
          Expanded(child: catagoriesListItem('Divorse')),
          Expanded(child: catagoriesListItem('Finance')),
          Expanded(child: catagoriesListItem('Tax')),
          Expanded(child: catagoriesListItem('Other'))
        ],
      ),
    ));
  }
}

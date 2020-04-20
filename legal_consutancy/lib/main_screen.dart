import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreenOfApp extends StatefulWidget {
  @override
  _MainScreenOfAppState createState() => _MainScreenOfAppState();
}

class _MainScreenOfAppState extends State<MainScreenOfApp> {
  @override
  Widget build(BuildContext context) {

    Widget catagoriesListItem(String str){
      return ListTile(
        leading: Text(str),
        trailing: Icon(Icons.arrow_right),
        dense: true,
        enabled: true,
        selected: true,
        isThreeLine: true,

      );
    }

    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Categories'),),
        body: Column(
          children: <Widget>[
            catagoriesListItem('Banking'),
            catagoriesListItem('Business'),
            catagoriesListItem('Civil'),
            catagoriesListItem('Criminal'),
            catagoriesListItem('Cyber Crime'),
            catagoriesListItem('Divorse'),
            catagoriesListItem('Finance'),
            catagoriesListItem('Tax'),
            catagoriesListItem('Other')
          ],
        ),
      )
    );
  }
}
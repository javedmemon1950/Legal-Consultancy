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
        title: Text('Title'),
        subtitle: Text('Sub-title'),
        leading: Text('leading leading leading leading leading'),
        trailing: Text('Trailing'),
        dense: true,
        enabled: true,
        selected: true,
        isThreeLine: true,

      );
    }

    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Categories'),),
        body: catagoriesListItem('sd'),
      )
    );
  }
}
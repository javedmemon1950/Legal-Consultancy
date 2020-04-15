import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Legal Consultancy',
      home: loginScreen(),
    );
  }
}

// Scaffold(
//         backgroundColor: Color.fromRGBO(00, 69, 69, 1),
//         body: SafeArea(
//           child: Column(
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.only(left: 25, top: 16),
//                 child: Image(
//                   image: AssetImage('assets/logo.png'),
//                   width: 300,
//                 ),
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                     fillColor: Colors.white,
//                     border: InputBorder.none,
//                     hintText: 'Enter a search term'),
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Enter your username'),
//               )
//             ],
//           ),
//         ),
//       ),

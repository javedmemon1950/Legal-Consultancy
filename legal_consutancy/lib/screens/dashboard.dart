import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legal_consutancy/screens/consultant_list.dart';
import 'package:legal_consutancy/widgets/appbar.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Widget dashboardMenu(String menuItem, String image) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: RaisedButton(
          onPressed: () => {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ConsultantList(menuItem)))
          },
          color: Color.fromRGBO(00, 69, 69, .8),
          child: Column(
            children: [
              SizedBox(height: 8),
              Image.asset(
                image,
                width: 100,
                height: 100,
              ),
              SizedBox(height: 8),
              Text(
                menuItem,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: myAppBar("Categories",context),
      body: Container(
        //height: 100,
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 6.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: 0.95),
          children: [
            dashboardMenu('Banking', 'assets/dashboard/banking.png'),
            dashboardMenu('Business', 'assets/dashboard/business.png'),
            dashboardMenu('Civil', 'assets/dashboard/civil.png'),
            dashboardMenu('Criminal', 'assets/dashboard/criminal.png'),
            dashboardMenu('Cyber Crime', 'assets/dashboard/cyber.png'),
            dashboardMenu('Divorce', 'assets/dashboard/divorse.png'),
            dashboardMenu('Finance', 'assets/dashboard/finance.png'),
            dashboardMenu('Tax', 'assets/dashboard/tax.png'),
            dashboardMenu('Harrasement', 'assets/dashboard/harrasement.png'),
            dashboardMenu('Other', 'assets/dashboard/manquestioning.png'),
          ],
        ),
      ),
    );
  }
}

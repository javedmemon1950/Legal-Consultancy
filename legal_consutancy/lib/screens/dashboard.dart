import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Widget dashboardMenu(String menu_item, String image) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          color: Color.fromRGBO(0, 105, 105, 1),
          elevation: 20,
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Image.asset(
                image,
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                menu_item,
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
      appBar: AppBar(
        title: Text('Categories'),
        backgroundColor: Color.fromRGBO(00, 69, 69, 1),
      ),
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
            dashboardMenu('Divorse', 'assets/dashboard/divorse.png'),
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

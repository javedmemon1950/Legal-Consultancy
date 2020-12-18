import 'package:flutter/material.dart';
import '../widgets/raised_button.dart';

class ConsultantList extends StatelessWidget {
  @override
  Widget dashboardMenu(String menu_item, String image) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Color.fromRGBO(0, 105, 105, 1),
        elevation: 20,
        child: Row(
          children: [
            Image.asset(image,
                width: 100,
                height: 100,),
            Column(
              children: [
                Text("Name"),
                Text("Qualifition"),
                Text("data"),
                customScreenButton(""),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        backgroundColor: Color.fromRGBO(00, 69, 69, 1),
      ),
      body: Container(
        //height: 100,
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: 1.5),
          children: [
            dashboardMenu('Banking', 'assets/dashboard/banking.png'),
            dashboardMenu('Business', 'assets/dashboard/business.png'),
            dashboardMenu('Civil', 'assets/dashboard/civil.png'),
            // dashboardMenu('Criminal', 'assets/dashboard/criminal.png'),
            // dashboardMenu('Cyber Crime', 'assets/dashboard/cyber.png'),
            // dashboardMenu('Divorse', 'assets/dashboard/divorse.png'),
            // dashboardMenu('Finance', 'assets/dashboard/finance.png'),
            // dashboardMenu('Tax', 'assets/dashboard/tax.png'),
            // dashboardMenu('Harrasement', 'assets/dashboard/harrasement.png'),
            // dashboardMenu('Other', ''),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/raised_button.dart';

class ConsultantList extends StatelessWidget {
  @override
  Widget dashboardMenu(String menu_item, String image) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.grey[200],
        elevation: 20,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Image.asset(
                image,
                width: 100,
                height: 120,
              ),
            ),
            Column(
              children: [
                Text("Name: Muhammad Ali", style: TextStyle(fontSize: 20.0)),
                Text("Qualifition: LLB", style: TextStyle(fontSize: 20.0)),
                Text("Experience 8 years", style: TextStyle(fontSize: 20.0)),
                Text("Name: Muhammad Ali", style: TextStyle(fontSize: 20.0)),
                Text("Qualifition: LLB", style: TextStyle(fontSize: 20.0)),
                Text("Experience 8 years", style: TextStyle(fontSize: 20.0)),
                Text("Experience 8 years", style: TextStyle(fontSize: 20.0)),
                RaisedButton(onPressed: () => {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => ConsultantList()))
                },
                child:Text("Visit Profile")
                ),
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
            dashboardMenu('Banking', 'assets/avatar_icon.png'),
            dashboardMenu('Business', 'assets/avatar_icon.png'),
            dashboardMenu('Civil', 'assets/avatar_icon.png'),
            dashboardMenu('Civil', 'assets/avatar_icon.png'),
            dashboardMenu('Civil', 'assets/avatar_icon.png'),
            dashboardMenu('Civil', 'assets/avatar_icon.png'),
          ],
        ),
      ),
    );
  }
}

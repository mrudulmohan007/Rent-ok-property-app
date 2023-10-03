import 'package:flutter/material.dart';
import 'package:rental_ok_app/screens/property/Tabs/dashboardscreen.dart';

class ScreenProperty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 2, 216),
        elevation: 0,

        leading: Container(
          padding: EdgeInsets.all(8.0),
          child: IconButton(
            iconSize: 25,
            icon: Icon(Icons.home_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ),

        // TextButton with down arrow
        title: Row(
          children: [
            Text('User'),
            Icon(Icons.keyboard_arrow_down)
          ],
        ),
      ),
      body: SafeArea(
        child: DashboardTab(),
      ),
    );
  }
}

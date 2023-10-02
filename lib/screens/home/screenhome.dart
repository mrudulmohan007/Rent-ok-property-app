import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 2, 216),
        elevation: 0,

        // Row to arrange widgets in the AppBar
        actions: [
          IconButton(
            icon: Icon(Icons.add_alert, color: Colors.white),
            onPressed: () {
              // Handle the action when the alert button is pressed
            },
          ),
          IconButton(
            icon: Icon(Icons.question_mark_sharp, color: Colors.white),
            onPressed: () {
              // Handle the action when the info button is pressed
            },
          ),
        ],
        leading: Container(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('images/Rent_okicon.jpg'),
            radius: 40,
          ),
        ),

        // TextButton with down arrow
        title: TextButton.icon(
          onPressed: () {
            // Handle the action when the user button is pressed
          },
          label: Text(
            'User',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Text('ScreenHome'),
        ),
      ),
    );
  }
}

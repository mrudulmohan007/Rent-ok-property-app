import 'package:flutter/material.dart';

class ScreenMoney extends StatelessWidget {
  const ScreenMoney({super.key});

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
        title: TextButton.icon(
          onPressed: () {},
          label: Text(
            'User',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Center(child: Text('Screen Money')),
      ),
    );
  }
}

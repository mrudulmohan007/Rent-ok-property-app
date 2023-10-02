import 'package:flutter/material.dart';

class ScreenplusButton extends StatelessWidget {
  const ScreenplusButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/Rent_okicon.jpg'),
        ),
        backgroundColor: Color.fromARGB(255, 13, 2, 216),
      ),
      body: SafeArea(
        child: Center(child: Text('plusbutton')),
      ),
    );
  }
}

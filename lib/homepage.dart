import 'package:flutter/material.dart';
import 'package:rental_ok_app/screens/home/bottomnavbar.dart';
import 'package:rental_ok_app/screens/home/screenhome.dart';
import 'package:rental_ok_app/screens/money/screenmoney.dart';
import 'package:rental_ok_app/screens/people/screenpeople.dart';
import 'package:rental_ok_app/screens/plusbutton/screenplusbutton.dart';
import 'package:rental_ok_app/screens/property/screenproperty.dart';

class HomePage extends StatelessWidget {
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final _pages = [
    ScreenHome(),
    ScreenMoney(),
    ScreenplusButton(),
    ScreenPeople(),
    ScreenProperty(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (BuildContext context, int updatedIndex, _) {
          return _pages[updatedIndex];
        },
      )),
    );
  }
}

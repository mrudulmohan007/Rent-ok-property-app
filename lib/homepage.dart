import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_ok_app/screens/home/bottomnavbar.dart';
import 'package:rental_ok_app/screens/home/screenhome.dart';
import 'package:rental_ok_app/screens/money/screenmoney.dart';
import 'package:rental_ok_app/screens/people/screens/screenpeople.dart';
import 'package:rental_ok_app/screens/plusbutton/screenplusbutton.dart';
import 'package:rental_ok_app/screens/property/screen/screenproperty.dart';

class SelectedIndexProvider extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selectedIndexProvider = Provider.of<SelectedIndexProvider>(context);

    final _pages = [
      ScreenHome(),
      ScreenMoney(),
      ScreenplusButton(),
      ScreenPeople(),
      ScreenProperty(),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: _pages[selectedIndexProvider.selectedIndex],
      ),
    );
  }
}

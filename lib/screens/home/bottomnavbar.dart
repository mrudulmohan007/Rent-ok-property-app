import 'package:flutter/material.dart';
import 'package:rental_ok_app/homepage.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: HomePage.selectedIndexNotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
          showUnselectedLabels: true,
          selectedItemColor: Color.fromARGB(255, 8, 4, 235),
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: TextStyle(
            color: Colors.grey,
          ),
          currentIndex: updatedIndex,
          onTap: (newIndex) {
            HomePage.selectedIndexNotifier.value = newIndex;
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.currency_rupee,
              ),
              label: 'Money',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
              ),
              label: 'People',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.apartment,
              ),
              label: 'property',
            ),
          ],
        );
      },
    );
  }
}

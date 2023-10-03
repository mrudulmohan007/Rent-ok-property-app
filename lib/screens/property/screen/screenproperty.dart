import 'package:flutter/material.dart';
import 'package:rental_ok_app/screens/property/Tabs/dashboardscreen.dart';
import 'package:rental_ok_app/screens/property/Tabs/roomsscreen.dart';
import 'package:rental_ok_app/screens/property/Tabs/listingscreen.dart';
import 'package:rental_ok_app/screens/property/Tabs/complaintscreen.dart';
import 'package:rental_ok_app/screens/property/Tabs/foodscreen.dart';

class ScreenProperty extends StatefulWidget {
  const ScreenProperty({super.key});

  @override
  State<ScreenProperty> createState() => _ScreenPropertyState();
}

class _ScreenPropertyState extends State<ScreenProperty>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
  }

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
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: TabBar(
                controller: _tabController,
                isScrollable: true, // Set to true for scrollable tabs
                unselectedLabelColor: Colors.grey,
                labelColor: Color.fromARGB(255, 4, 23, 233),
                tabs: [
                  Tab(
                    text: 'Dashboard',
                  ),
                  Tab(text: 'Rooms'),
                  Tab(text: 'Listing'),
                  Tab(text: 'Complaint'),
                  Tab(text: 'Food'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  DashboardTab(),
                  RoomsTab(),
                  ListingTab(),
                  ComplaintTab(),
                  FoodTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:rental_ok_app/components/homepage/PremiumFeatureSection.dart';
import 'package:rental_ok_app/components/homepage/QuickActionSection.dart';
import 'package:rental_ok_app/components/homepage/Search.dart';
import 'package:rental_ok_app/components/homepage/SummaryCardSection.dart';
import 'package:rental_ok_app/components/homepage/SummaryInfoCard.dart';
import 'package:rental_ok_app/components/homepage/SummarySection.dart';
import 'package:rental_ok_app/components/homepage/TaskCard.dart';
import 'package:rental_ok_app/components/homepage/TasksSection.dart';
import 'package:rental_ok_app/components/homepage/Title.dart';
import 'package:rental_ok_app/components/homepage/WeeklyTaskSection.dart';

class ScreenHome extends StatefulWidget {
  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  //Text controller for the search bar
  final TextEditingController _searchTextController = TextEditingController();

  //Keeps track of which drop down value was picked for Summary Section
  String _summaryValue = "Property 1";

  void onDropDownMenuItemSelected(String selectedValue) {
    setState(() {
      _summaryValue = selectedValue;
    });
  }

  ///Summary info cards for the first scrolling section
  final summaryCards = [
    SummaryInfoCard(
      value: "0",
      title: "Today's \nContribution",
      icon: const Icon(Icons.attach_money_outlined),
      color: Colors.green,
    ),
    SummaryInfoCard(
        value: "0",
        title: "Today's \nContribution",
        icon: const Icon(Icons.attach_money_outlined),
        color: Colors.red),
    SummaryInfoCard(
        value: "0",
        title: "Today's \nContribution",
        icon: const Icon(Icons.attach_money_outlined),
        color: Colors.yellow),
    SummaryInfoCard(
      value: "0",
      title: "Today's \nContribution",
      icon: const Icon(Icons.attach_money_outlined),
      color: Colors.green,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///Using NestedScrollView to create collapsing toolbar
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) =>
        [
          SliverAppBar(
            floating: true,
            toolbarHeight: 60.0,
            pinned: true,
            title: TextButton.icon(
              onPressed: () {
                // Handle the action when the user button is pressed
              },
              label: const Text(
                'User',
                style: TextStyle(color: Colors.white),
              ),
              icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
            ),
            backgroundColor: const Color.fromARGB(255, 13, 2, 216),
            elevation: 0,
            // Row to arrange widgets in the AppBar
            actions: [
              IconButton(
                icon: const Icon(Icons.add_alert, color: Colors.white),
                onPressed: () {
                  // Handle the action when the alert button is pressed
                },
              ),
              IconButton(
                icon: const Icon(
                    Icons.question_mark_sharp, color: Colors.white),
                onPressed: () {
                  // Handle the action when the info button is pressed
                },
              ),
            ],
            leading: Container(
              padding: const EdgeInsets.all(8.0),
              child: const CircleAvatar(
                backgroundImage: AssetImage('images/Rent_okicon.jpg'),
                radius: 40,
              ),
            ),
            ///Attaching a search bar at the bottom of the Sliver App Bar
            ///This Search Field won't collapse when scrolling
            bottom: AppBar(
              titleSpacing: 0,
              backgroundColor: Colors.white,
              title: CustomSearchBar(searchController: _searchTextController,),
              elevation: 0,
            ) ,
          )
        ],
        body: SafeArea(
            child: ListView(
              children: [

                SummarySelectionSection(
                    summaryValue: _summaryValue,
                    onChanged: onDropDownMenuItemSelected),
                SummaryCardSection(summaryCards: summaryCards),
                Divider(
                  height: 40.0,
                  thickness: 20.0,
                  color: Colors.grey.shade300,
                ),
                QuickActionSection(),
                Divider(
                  height: 40.0,
                  thickness: 20.0,
                  color: Colors.grey.shade300,
                ),
                TaskSection(),
                Divider(
                  height: 40.0,
                  thickness: 20.0,
                  color: Colors.grey.shade300,
                ),
                WeeklyTaskSection(),
                Divider(
                  height: 40.0,
                  thickness: 20.0,
                  color: Colors.grey.shade300,
                ),
                PremiumFeatureSection(),

              ],
            )),
      ),
    );
  }
}

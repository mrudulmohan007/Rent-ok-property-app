import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rental_ok_app/components/homepage/ActionCard.dart';
import 'package:rental_ok_app/components/homepage/Title.dart';

class QuickActionSection extends StatelessWidget {
  QuickActionSection({super.key});
  ///Customize your action cards here
  List<Widget> actionCards = [
    ActionCard(onTap: (){}, action: "Add \nTenant", image: "images/ic_person.png"),
    ActionCard(onTap: (){}, action: "Receive \nPayment", image: "images/ic_rupee.png"),
    ActionCard(onTap: (){}, action: "Add \nLead", image: "images/ic_add_user.png"),
    ActionCard(onTap: (){}, action: "Add \nExpense", image: "images/ic_add_expense.png"),
    ActionCard(onTap: (){}, action: "Add \nDues", image: "images/ic_add_dues.png"),
    ActionCard(onTap: (){}, action: "Send \nAnnouncement", image: "images/ic_annouce.png"),
    ActionCard(onTap: (){}, action: "Add Team \nTenant", image: "images/ic_add_team.png"),
    ActionCard(onTap: (){}, action: "Add Dues \nPackage", image: "images/ic_add_dues.png"),
    ActionCard(onTap: (){}, action: "Add Bank \nAccount", image: "images/ic_add_bank.png"),
    ActionCard(onTap: (){}, action: "Add \nBooking", image: "images/ic_booking.png"),
    ActionCard(onTap: (){}, action: "Share \nWebsite", image: "images/ic_share.png"),
    ActionCard(onTap: (){}, action: "Update Food \nMenu", image: "images/ic_food_menu.png"),
    ActionCard(onTap: (){}, action: "Agreement \nSettings", image: "images/ic_contract.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TitleText(title: 'Quick Actions',),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                itemCount: actionCards.length,
                itemBuilder: (context, position) {
                  return actionCards[position];
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

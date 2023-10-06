import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SummaryInfoCard extends StatelessWidget {
  SummaryInfoCard(
      {super.key,
      required this.value,
      required this.title,
      required this.icon,
      required this.color,});

  String value;
  String title;
  Icon icon;
  Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 100,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(
            color: Colors.grey.shade400,
            width: 1.0,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  "₹$value",
                  style: TextStyle(color: color, fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w300),
                  ),
                  icon,
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

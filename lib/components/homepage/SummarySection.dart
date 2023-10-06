import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rental_ok_app/components/homepage/Title.dart';

class SummarySelectionSection extends StatelessWidget {
  const SummarySelectionSection(
      {super.key, required this.summaryValue, required this.onChanged});

  final summaryValue;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleText(title: 'October Summary for'),
            DropdownButton(
              items: const [
                DropdownMenuItem(
                  value: "Property 1",
                  child: Text("Property 1"),
                ),
                DropdownMenuItem(
                  value: "Property 2",
                  child: Text("Property 2"),
                ),
                DropdownMenuItem(
                  value: "Property 3",
                  child: Text("Property 3"),
                ),
                DropdownMenuItem(
                  value: "Property 4",
                  child: Text("Property 4"),
                )
              ],
              onChanged: (selectedValue) {
                if(selectedValue is String){
                  onChanged(selectedValue);
                }
              },
              value: summaryValue,
              underline: const SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}

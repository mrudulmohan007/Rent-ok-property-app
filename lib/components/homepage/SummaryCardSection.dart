
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SummaryCardSection extends StatelessWidget {
  const SummaryCardSection({super.key, required this.summaryCards});
  final List<Widget> summaryCards;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        height: 120,
        child: ListView.builder(
          itemCount: summaryCards.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, position){
            return summaryCards[position];
          },
        ),
      ),
    );
  }
}

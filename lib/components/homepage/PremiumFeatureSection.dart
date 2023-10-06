import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

import 'TaskCard.dart';
import 'Title.dart';

class PremiumFeatureSection extends StatelessWidget {
  PremiumFeatureSection({super.key});

  final features = [
    TaskCard(
      title: 'View Tenant Profile',
      description: "Now check address proof,"
          " \nID Proof & Joining form "
          "\nof your tenant at one place",
      buttonTitle: 'Check Tenant Profile',
    ),
    TaskCard(
      title: 'My Website',
      description: "Your world class website"
          " \nLess calls; More conversion",
      buttonTitle: 'I\'m interested',
    ),
    TaskCard(
      title: 'My Notice Board',
      description: "Start sending announcements "
          "\nto all tenants",
      buttonTitle: 'Send Announcements',
    )

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TitleText(title: 'Complete these tasks'),
        ),
        FlutterCarousel.builder(
          itemCount: features.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int PageViewIndex) =>
                  features[itemIndex],
          options: CarouselOptions(
              height: 200.0,
              showIndicator: true,
              floatingIndicator: true,
              autoPlay: true,
              initialPage: 0,
              viewportFraction: 1.0,
              slideIndicator: CircularWaveSlideIndicator(
                currentIndicatorColor: Colors.blue,
                alignment: Alignment.bottomCenter,
                indicatorBackgroundColor: Colors.grey.shade300,
              ),
              scrollDirection: Axis.horizontal),
        ),
      ],
    );
  }
}

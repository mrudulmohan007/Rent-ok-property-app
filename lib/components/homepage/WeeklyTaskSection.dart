import 'package:flutter/cupertino.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:rental_ok_app/components/homepage/TaskCard.dart';

import 'Title.dart';

class WeeklyTaskSection extends StatelessWidget {
  const WeeklyTaskSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TitleText(title: 'Your Weekly Tasks'),
        ),
        TaskCard(
          title: 'Pending Expenses',
          description:
              'Oho, week\'s to end. \nDon\'t forget to add your \nexpenses.',
          buttonTitle: 'Add Expenses',
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/activity/activity.dart';

class MoodRatingPicker extends StatelessWidget {
  final int rating;
  final ValueChanged<int> onRatingChanged;

  const MoodRatingPicker({super.key, required this.rating, required this.onRatingChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.strings.howDidYouFeel,
          style: context.theme.textTheme.bodyMedium,
        ),
        const Gap(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            5,
            (index) => StarWidget(
              starIndex: index,
              currentRating: rating,
              onRatingChanged: onRatingChanged,
              filledColor: context.theme.colorScheme.primary,
              unfilledColor: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}

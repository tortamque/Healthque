import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';

class DurationPickerField extends StatelessWidget {
  final Duration duration;
  final VoidCallback onPick;

  const DurationPickerField({
    super.key,
    required this.duration,
    required this.onPick,
  });

  String formattedDuration(BuildContext context) {
    final int hours = duration.inHours;
    final int minutes = duration.inMinutes.remainder(60);
    return hours > 0 ? context.strings.hoursAndMinutesAmount(hours, minutes) : context.strings.minutesAmount(minutes);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.strings.duration,
          style: context.textTheme.bodyMedium,
        ),
        const Gap(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              formattedDuration(context),
              style: const TextStyle(fontSize: 16),
            ),
            ElevatedButton(
              onPressed: onPick,
              child: Text(context.strings.pickDuration),
            ),
          ],
        ),
      ],
    );
  }
}

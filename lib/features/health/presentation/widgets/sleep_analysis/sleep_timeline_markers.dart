import 'package:flutter/material.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:intl/intl.dart';

class SleepTimelineMarkers extends StatelessWidget {
  final DateTime timelineStart;
  final DateTime timelineEnd;

  const SleepTimelineMarkers({
    super.key,
    required this.timelineStart,
    required this.timelineEnd,
  });

  @override
  Widget build(BuildContext context) {
    final totalMinutes = timelineEnd.difference(timelineStart).inMinutes;
    final interval = totalMinutes / 3;
    final marker0 = timelineStart;
    final marker1 = timelineStart.add(Duration(minutes: interval.round()));
    final marker2 = timelineStart.add(Duration(minutes: (2 * interval).round()));
    final marker3 = timelineEnd;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(_formatTime(marker0), style: context.textTheme.bodySmall),
        Text(_formatTime(marker1), style: context.textTheme.bodySmall),
        Text(_formatTime(marker2), style: context.textTheme.bodySmall),
        Text(_formatTime(marker3), style: context.textTheme.bodySmall),
      ],
    );
  }

  String _formatTime(DateTime dt) => DateFormat('HH:mm').format(dt);
}

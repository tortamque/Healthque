import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';

class SleepOverviewCard extends StatelessWidget {
  final DateTime timelineStart;
  final DateTime timelineEnd;
  final int incHours;
  final int incMins;
  final int excHours;
  final int excMins;
  final List<HealthRecord> sleepRecords;

  const SleepOverviewCard({
    super.key,
    required this.timelineStart,
    required this.timelineEnd,
    required this.incHours,
    required this.incMins,
    required this.excHours,
    required this.excMins,
    required this.sleepRecords,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.strings.sleepOverviewTitle,
              style: context.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Gap(16),
            MultiLineSleepTimelineChart(
              sleepRecords: sleepRecords,
              timelineStart: timelineStart,
              timelineEnd: timelineEnd,
            ),
            const Gap(8),
            SleepTimelineMarkers(
              timelineStart: timelineStart,
              timelineEnd: timelineEnd,
            ),
            const Gap(8),
            const SleepStagesLegend(),
            const Gap(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.strings.sleepPeriod(
                    _formatTime(timelineStart),
                    _formatTime(timelineEnd),
                  ),
                  style: context.textTheme.bodySmall,
                ),
                const Gap(8),
                Text(
                  context.strings.totalSleepIncluding("$incHours h $incMins m"),
                  style: context.textTheme.bodySmall,
                ),
                const Gap(8),
                Text(
                  context.strings.totalSleepExcluding("$excHours h $excMins m"),
                  style: context.textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatTime(DateTime dt) => DateFormat('HH:mm').format(dt);
}

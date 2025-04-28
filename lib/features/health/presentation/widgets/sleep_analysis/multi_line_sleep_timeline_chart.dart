import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:healthque/core/extensions/health_data_type.dart';
import 'package:healthque/features/health/health.dart';

class MultiLineSleepTimelineChart extends StatelessWidget {
  const MultiLineSleepTimelineChart({
    super.key,
    required this.sleepRecords,
    required this.timelineStart,
    required this.timelineEnd,
  });

  final List<HealthRecord> sleepRecords;
  final DateTime timelineStart;
  final DateTime timelineEnd;

  List<HealthDataType> get sleepTypes => [
        HealthDataType.SLEEP_AWAKE,
        HealthDataType.SLEEP_REM,
        HealthDataType.SLEEP_LIGHT,
        HealthDataType.SLEEP_DEEP,
      ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: sleepTypes.map((type) {
        final recordsOfType = sleepRecords.where((record) => record.dataPoint.type == type).toList();
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: SizedBox(
            height: 30,
            child: _SleepTimelineRow(
              records: recordsOfType,
              timelineStart: timelineStart,
              timelineEnd: timelineEnd,
            ),
          ),
        );
      }).toList(),
    );
  }
}

class _SleepTimelineRow extends StatelessWidget {
  final List<HealthRecord> records;
  final DateTime timelineStart;
  final DateTime timelineEnd;

  const _SleepTimelineRow({
    required this.records,
    required this.timelineStart,
    required this.timelineEnd,
  });

  @override
  Widget build(BuildContext context) {
    final int totalDuration = timelineEnd.difference(timelineStart).inMinutes;
    final List<Widget> children = [];

    final sortedRecords = List<HealthRecord>.from(records)
      ..sort((a, b) => a.dataPoint.dateFrom.compareTo(b.dataPoint.dateFrom));

    int previousOffset = 0;

    for (var record in sortedRecords) {
      final int recordStartOffset = record.dataPoint.dateFrom.difference(timelineStart).inMinutes;
      int recordDuration = record.dataPoint.dateTo.difference(record.dataPoint.dateFrom).inMinutes;
      if (recordStartOffset > previousOffset) {
        final int gap = recordStartOffset - previousOffset;
        children.add(
          Expanded(
            flex: gap,
            child: Container(color: Colors.transparent),
          ),
        );
      }

      children.add(
        Expanded(
          flex: recordDuration <= 0 ? 1 : recordDuration,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: record.dataPoint.type.sleepColor,
            ),
          ),
        ),
      );
      previousOffset = recordStartOffset + recordDuration;
    }

    final int trailing = totalDuration - previousOffset;

    if (trailing > 0) {
      children.add(
        Expanded(
          flex: trailing,
          child: Container(color: Colors.transparent),
        ),
      );
    }

    return Row(children: children);
  }
}

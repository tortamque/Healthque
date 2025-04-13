import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/extensions/health_data_type.dart';
import 'package:healthque/features/health/health.dart';

class SleepSegment extends StatelessWidget {
  const SleepSegment({super.key, required this.record, required this.diffMinutes});

  final HealthRecord record;
  final int diffMinutes;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          color: record.dataPoint.type.sleepColor,
          shape: BoxShape.circle,
        ),
      ),
      title: Text(context.strings.sleepSegmentType(
        _getSleepStateLabel(record.dataPoint.type, context),
      )),
      subtitle: Text(
        "${record.dataPoint.dateFrom.hour.toString().padLeft(2, '0')}:${record.dataPoint.dateFrom.minute.toString().padLeft(2, '0')} - "
        "${record.dataPoint.dateTo.hour.toString().padLeft(2, '0')}:${record.dataPoint.dateTo.minute.toString().padLeft(2, '0')} "
        "($diffMinutes ${context.strings.minutesShort})",
      ),
    );
  }

  String _getSleepStateLabel(HealthDataType type, BuildContext context) {
    switch (type) {
      case HealthDataType.SLEEP_LIGHT:
        return context.strings.sleepStageLight;
      case HealthDataType.SLEEP_REM:
        return context.strings.sleepStageRem;
      case HealthDataType.SLEEP_AWAKE:
        return context.strings.sleepStageAwake;
      case HealthDataType.SLEEP_DEEP:
        return context.strings.sleepStageDeep;
      default:
        return context.strings.unknown;
    }
  }
}

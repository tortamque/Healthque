import 'package:flutter/material.dart';
import 'package:health/health.dart';

extension HealthDataTypeExtension on HealthDataType {
  Color get sleepColor {
    switch (this) {
      case HealthDataType.SLEEP_AWAKE:
        return Colors.redAccent;
      case HealthDataType.SLEEP_REM:
        return Colors.blue[300]!;
      case HealthDataType.SLEEP_LIGHT:
        return Colors.blue[600]!;
      case HealthDataType.SLEEP_DEEP:
        return Colors.deepPurple;
      default:
        return Colors.grey;
    }
  }
}

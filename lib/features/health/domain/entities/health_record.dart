import 'package:health/health.dart';

class HealthRecord {
  final HealthDataPoint dataPoint;
  final DateTime date;

  HealthRecord({
    required this.dataPoint,
    required this.date,
  });

  @override
  String toString() => 'HealthRecord(date: $date, dataPoint: $dataPoint)';

  @override
  bool operator ==(Object other) => other is HealthRecord && other.dataPoint == dataPoint && other.date == date;

  @override
  int get hashCode => Object.hash(dataPoint, date);
}

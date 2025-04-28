import 'package:healthque/features/health/health.dart';

abstract class TemperatureTrackingRepository {
  TemperatureRecords? getTemperatureRecords();
  Future<void> saveTemperatureRecords(TemperatureRecords records);
  Future<void> deleteTemperatureRecord(TemperatureRecord record);
}

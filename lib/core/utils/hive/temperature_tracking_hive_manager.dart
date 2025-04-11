import 'package:healthque/features/health/health.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TemperatureTrackingHiveManager {
  late Box<TemperatureRecords> temperatureRecordsBox;

  String get hiveKey => 'temperatureRecords';

  Future<void> init() async {
    temperatureRecordsBox = await Hive.openBox<TemperatureRecords>(hiveKey);
  }
}

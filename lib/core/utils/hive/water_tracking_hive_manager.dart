import 'package:healthque/features/health/health.dart';
import 'package:hive_flutter/hive_flutter.dart';

class WaterTrackingHiveManager {
  late Box<WaterRecords> waterRecordsBox;
  String get hiveKey => 'water_records';

  Future<void> init() async {
    waterRecordsBox = await Hive.openBox<WaterRecords>(hiveKey);
  }
}

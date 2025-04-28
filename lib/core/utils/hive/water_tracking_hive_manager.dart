import 'package:healthque/core/utils/hive/hive_manager.dart';
import 'package:healthque/features/health/health.dart';
import 'package:hive_flutter/hive_flutter.dart';

class WaterTrackingHiveManager implements HiveManager<WaterRecords> {
  @override
  late Box<WaterRecords> box;
  @override
  String get hiveKey => 'water_records';

  @override
  Future<void> init() async {
    box = await Hive.openBox<WaterRecords>(hiveKey);
  }
}

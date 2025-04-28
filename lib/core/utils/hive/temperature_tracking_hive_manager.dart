import 'package:healthque/core/utils/hive/hive_manager.dart';
import 'package:healthque/features/health/health.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TemperatureTrackingHiveManager implements HiveManager<TemperatureRecords> {
  @override
  late Box<TemperatureRecords> box;

  @override
  String get hiveKey => 'temperatureRecords';

  @override
  Future<void> init() async {
    box = await Hive.openBox<TemperatureRecords>(hiveKey);
  }
}

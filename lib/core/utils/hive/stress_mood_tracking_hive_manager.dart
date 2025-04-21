import 'package:healthque/core/utils/hive/hive_manager.dart';
import 'package:healthque/features/health/health.dart';
import 'package:hive_flutter/hive_flutter.dart';

class StressMoodTrackingHiveManager implements HiveManager<StressMoodRecords> {
  @override
  late Box<StressMoodRecords> box;

  @override
  String get hiveKey => 'stress_mood_records';

  @override
  Future<void> init() async {
    box = await Hive.openBox<StressMoodRecords>(hiveKey);
  }
}

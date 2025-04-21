import 'package:healthque/core/utils/hive/hive_manager.dart';
import 'package:healthque/features/health/health.dart';
import 'package:hive_flutter/hive_flutter.dart';

class BloodSugarTrackingHiveManager implements HiveManager<BloodSugarRecords> {
  @override
  late Box<BloodSugarRecords> box;

  @override
  String get hiveKey => 'bloodSugarRecords';

  @override
  Future<void> init() async {
    box = await Hive.openBox<BloodSugarRecords>(hiveKey);
  }
}

import 'package:healthque/core/utils/hive/hive_manager.dart';
import 'package:healthque/features/health/health.dart';
import 'package:hive_flutter/hive_flutter.dart';

class BloodPressureTrackingHiveManager implements HiveManager<BloodPressureRecords> {
  @override
  late Box<BloodPressureRecords> box;
  @override
  String get hiveKey => 'bloodPressureRecords';

  @override
  Future<void> init() async {
    box = await Hive.openBox<BloodPressureRecords>(hiveKey);
  }
}

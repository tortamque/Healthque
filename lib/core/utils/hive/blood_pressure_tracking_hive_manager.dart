import 'package:healthque/features/health/health.dart';
import 'package:hive_flutter/hive_flutter.dart';

class BloodPressureTrackingHiveManager {
  late Box<BloodPressureRecords> bloodPressureBox;
  String get hiveKey => 'bloodPressureRecords';

  Future<void> init() async {
    bloodPressureBox = await Hive.openBox<BloodPressureRecords>(hiveKey);
  }
}

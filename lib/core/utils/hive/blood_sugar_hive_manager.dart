import 'package:healthque/features/health/health.dart';
import 'package:hive_flutter/hive_flutter.dart';

class BloodSugarTrackingHiveManager {
  late Box<BloodSugarRecords> bloodSugarRecordsBox;

  String get hiveKey => 'bloodSugarRecords';

  Future<void> init() async {
    bloodSugarRecordsBox = await Hive.openBox<BloodSugarRecords>(hiveKey);
  }
}

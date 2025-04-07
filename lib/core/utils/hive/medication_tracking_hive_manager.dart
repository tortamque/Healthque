import 'package:healthque/features/health/health.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MedicationTrackingHiveManager {
  late Box<Medications> medicationTrackingBox;

  String get hiveKey => 'medicationTracking';

  Future<void> init() async {
    medicationTrackingBox = await Hive.openBox<Medications>(hiveKey);
  }
}

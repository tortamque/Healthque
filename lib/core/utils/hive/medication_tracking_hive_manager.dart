import 'package:healthque/core/utils/hive/hive_manager.dart';
import 'package:healthque/features/health/health.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MedicationTrackingHiveManager implements HiveManager<Medications> {
  @override
  late Box<Medications> box;

  @override
  String get hiveKey => 'medicationTracking';

  @override
  Future<void> init() async {
    box = await Hive.openBox<Medications>(hiveKey);
  }
}

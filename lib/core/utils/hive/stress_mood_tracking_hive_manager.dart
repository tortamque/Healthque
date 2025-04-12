import 'package:healthque/features/health/health.dart';
import 'package:hive_flutter/hive_flutter.dart';

class StressMoodTrackingHiveManager {
  late Box<StressMoodRecords> stressMoodBox;

  String get hiveKey => 'stress_mood_records';

  Future<void> init() async {
    stressMoodBox = await Hive.openBox<StressMoodRecords>(hiveKey);
  }
}

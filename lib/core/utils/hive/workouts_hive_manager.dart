import 'package:healthque/core/shared/shared.dart';
import 'package:hive_flutter/hive_flutter.dart';

class WorkoutsHiveManager {
  late Box<Workouts> workoutsBox;

  String get hiveKey => 'workouts';

  Future<void> init() async {
    workoutsBox = await Hive.openBox<Workouts>(hiveKey);
  }
}

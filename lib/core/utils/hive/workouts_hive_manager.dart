import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/utils/hive/hive_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';

class WorkoutsHiveManager implements HiveManager<Workouts> {
  @override
  late Box<Workouts> box;

  @override
  String get hiveKey => 'workouts';

  @override
  Future<void> init() async {
    box = await Hive.openBox<Workouts>(hiveKey);
  }
}

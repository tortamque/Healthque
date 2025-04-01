import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/utils/hive/hive.dart';

abstract class ActivityDbService {
  Workouts? getWorkouts();
  Future<void> saveWorkouts(Workouts workouts);
}

class ActivityDbServiceImpl implements ActivityDbService {
  final WorkoutsHiveManager _manager;

  ActivityDbServiceImpl(this._manager);

  @override
  Workouts? getWorkouts() => _manager.workoutsBox.get(_manager.hiveKey);

  @override
  Future<void> saveWorkouts(Workouts workouts) => _manager.workoutsBox.put(_manager.hiveKey, workouts);
}

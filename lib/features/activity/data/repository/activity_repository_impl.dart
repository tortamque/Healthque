import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/activity/activity.dart';

class ActivityRepositoryImpl implements ActivityRepository {
  final ActivityDbService _activityDbService;

  ActivityRepositoryImpl(this._activityDbService);

  @override
  Workouts? getWorkouts() => _activityDbService.getWorkouts();

  @override
  Future<void> saveWorkouts(Workouts workouts) => _activityDbService.saveWorkouts(workouts);
}

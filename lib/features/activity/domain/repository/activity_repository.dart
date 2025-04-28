import 'package:healthque/core/shared/shared.dart';

abstract class ActivityRepository {
  Workouts? getWorkouts();
  Future<void> saveWorkouts(Workouts user);
  Future<void> deleteWorkout(Workout workout);
}

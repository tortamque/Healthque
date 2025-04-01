import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/usecases/usecase.dart';
import 'package:healthque/features/activity/activity.dart';

class GetWorkoutsUseCase implements UseCase<Workouts?, void> {
  final ActivityRepository repository;

  GetWorkoutsUseCase(this.repository);

  @override
  Workouts? call(void params) => repository.getWorkouts();
}

class SaveWorkoutsUseCase implements AsyncUseCase<void, Workouts> {
  final ActivityRepository repository;

  SaveWorkoutsUseCase(this.repository);

  @override
  Future<void> call(Workouts params) => repository.saveWorkouts(params);
}

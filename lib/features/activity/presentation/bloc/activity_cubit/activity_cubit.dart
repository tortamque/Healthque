import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/features/activity/activity.dart';

part 'activity_state.dart';
part 'activity_cubit.freezed.dart';

class ActivityCubit extends Cubit<ActivityState> {
  ActivityCubit(
    this._getWorkoutsUseCase,
    this._saveWorkoutsUseCase,
  ) : super(ActivityState(workouts: Workouts(workouts: [])));

  final GetWorkoutsUseCase _getWorkoutsUseCase;
  final SaveWorkoutsUseCase _saveWorkoutsUseCase;

  Future<void> fetchWorkouts() async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    try {
      final fetched = _getWorkoutsUseCase.call(null);
      final fetchedWorkouts = fetched ?? Workouts(workouts: []);
      final sortedList = List<Workout>.from(fetchedWorkouts.workouts)
        ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

      emit(state.copyWith(
        workouts: Workouts(workouts: sortedList),
        isLoading: false,
        errorMessage: null,
      ));
    } catch (error) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> addWorkout(Workout newWorkout) async {
    final currentList = state.workouts.workouts;
    final updatedList = List<Workout>.from(currentList)..add(newWorkout);
    updatedList.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    final updatedWorkouts = Workouts(workouts: updatedList);

    emit(state.copyWith(
      isLoading: true,
      errorMessage: null,
      workouts: updatedWorkouts,
    ));

    try {
      await _saveWorkoutsUseCase.call(updatedWorkouts);

      emit(state.copyWith(
        isLoading: false,
        errorMessage: null,
        workouts: updatedWorkouts,
      ));
    } catch (error) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: error.toString(),
      ));
    }
  }
}

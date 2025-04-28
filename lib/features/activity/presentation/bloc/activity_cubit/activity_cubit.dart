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
    this._deleteWorkoutsUseCase,
  ) : super(ActivityState(workouts: Workouts(workouts: [])));

  final GetWorkoutsUseCase _getWorkoutsUseCase;
  final SaveWorkoutsUseCase _saveWorkoutsUseCase;
  final DeleteWorkoutsUseCase _deleteWorkoutsUseCase;

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

  Future<void> deleteWorkout(Workout workout) async {
    final currentList = state.workouts.workouts;
    final updatedList = List<Workout>.from(currentList)..remove(workout);
    updatedList.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    final updatedWorkouts = Workouts(workouts: updatedList);

    emit(state.copyWith(isLoading: true, errorMessage: null));

    try {
      await _deleteWorkoutsUseCase.call(workout);
      emit(state.copyWith(
        isLoading: false,
        workouts: updatedWorkouts,
        errorMessage: null,
      ));
    } catch (error) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> filterWorkouts({WorkoutType? type, DateTime? date}) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final fetched = _getWorkoutsUseCase.call(null);
      final originalWorkouts = fetched?.workouts ?? [];

      final filteredWorkouts = originalWorkouts.where((workout) {
        final typeMatches = type == null || workout.workoutType == type;
        final dateMatches = date == null
            ? true
            : (workout.createdAt.year == date.year &&
                workout.createdAt.month == date.month &&
                workout.createdAt.day == date.day);
        return typeMatches && dateMatches;
      }).toList();

      filteredWorkouts.sort((a, b) => b.createdAt.compareTo(a.createdAt));

      emit(state.copyWith(
        workouts: Workouts(workouts: filteredWorkouts),
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
}

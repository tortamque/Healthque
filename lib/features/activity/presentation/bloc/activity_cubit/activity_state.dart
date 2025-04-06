part of 'activity_cubit.dart';

@freezed
sealed class ActivityState with _$ActivityState {
  const factory ActivityState({
    required Workouts workouts,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _ActivityState;
}

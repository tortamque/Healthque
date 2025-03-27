part of 'health_cubit.dart';

@freezed
sealed class HealthState with _$HealthState {
  const HealthState._();

  const factory HealthState.initial() = HealthStateInitial;
  const factory HealthState.loading() = HealthStateLoading;
  const factory HealthState.loaded({
    required int steps,
    required double calories,
    required Duration sleepDuration,
    required Duration exerciseDuration,
    required double exerciseDistance,
    required double averageHeartRate,
    required double averageBloodOxygen,
  }) = HealthStateLoaded;
  const factory HealthState.error(String message) = HealthStateError;
}

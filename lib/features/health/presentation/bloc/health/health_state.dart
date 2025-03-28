part of 'health_cubit.dart';
@freezed
sealed class HealthState with _$HealthState {
  const HealthState._();
  const factory HealthState.initial() = HealthStateInitial;
  const factory HealthState.loading({HealthStateLoaded? previousData}) = HealthStateLoading;
  const factory HealthState.loaded({
    required List<HealthRecord> steps,
    required List<HealthRecord> calories,
    required List<HealthRecord> distance,
    required List<HealthRecord> sleep,
    required List<HealthRecord> workout,
    required List<HealthRecord> heartRate,
    required List<HealthRecord> bloodOxygen,
  }) = HealthStateLoaded;
  const factory HealthState.error(String message) = HealthStateError;
}

part of 'blood_pressure_cubit.dart';

@freezed
sealed class BloodPressureTrackingState with _$BloodPressureTrackingState {
  const factory BloodPressureTrackingState({
    @Default(false) isLoading,
    @Default(BloodPressureRecords(records: [])) BloodPressureRecords records,
    @Default(false) bool isHighBloodPressure,
    String? errorMessage,
  }) = _BloodPressureTrackingState;
}

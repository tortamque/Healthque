part of 'temperature_tracking_cubit.dart';

@freezed
sealed class TemperatureTrackingState with _$TemperatureTrackingState {
  const factory TemperatureTrackingState({
    @Default(TemperatureRecords(records: [])) TemperatureRecords? records,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _TemperatureTrackingState;
}

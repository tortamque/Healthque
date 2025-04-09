part of 'water_tracking_cubit.dart';

@freezed
sealed class WaterTrackingState with _$WaterTrackingState {
  const factory WaterTrackingState({
    required WaterRecords records,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _WaterTrackingState;
}

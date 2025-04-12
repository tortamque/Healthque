part of 'stress_mood_tracking_cubit.dart';

@freezed
sealed class StressMoodTrackingState with _$StressMoodTrackingState {
  const factory StressMoodTrackingState({
    @Default(false) bool isLoading,
    @Default(StressMoodRecords(records: [])) StressMoodRecords records,
    String? errorMessage,
  }) = _StressMoodTrackingState;
}

part of 'blood_sugar_tracking_cubit.dart';

@freezed
sealed class BloodSugarTrackingState with _$BloodSugarTrackingState {
  const factory BloodSugarTrackingState({
    @Default(BloodSugarRecords(records: [])) BloodSugarRecords? records,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _BloodSugarTrackingState;
}

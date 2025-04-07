part of 'medication_tracking_cubit.dart';

@freezed
sealed class MedicationTrackingState with _$MedicationTrackingState {
  const factory MedicationTrackingState({
    @Default(Medications(medications: [])) Medications medications,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _MedicationState;
}

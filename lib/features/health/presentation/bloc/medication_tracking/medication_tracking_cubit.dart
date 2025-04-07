import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/features/health/health.dart';

part 'medication_tracking_state.dart';
part 'medication_tracking_cubit.freezed.dart';

class MedicationTrackingCubit extends Cubit<MedicationTrackingState> {
  MedicationTrackingCubit(
    this._getMedicationTrackingUseCase,
    this._saveMedicationTrackingUseCase,
    this._deleteMedicationTrackingUseCase,
  ) : super(const MedicationTrackingState());

  final GetMedicationTrackingUseCase _getMedicationTrackingUseCase;
  final SaveMedicationTrackingUseCase _saveMedicationTrackingUseCase;
  final DeleteMedicationTrackingUseCase _deleteMedicationTrackingUseCase;

  void fetchMedications() {
    final meds = _getMedicationTrackingUseCase.call(null) ?? Medications(medications: []);
    emit(MedicationTrackingState(medications: meds, isLoading: false));
  }

  Future<void> addMedication({
    required MedicationType type,
    required String dosage,
    required String course,
    String? notes,
  }) async {
    final currentMeds = _getMedicationTrackingUseCase.call(null) ?? Medications(medications: []);

    final int newId = currentMeds.medications.length + 1;

    final newMed = Medication(
      id: newId,
      type: type,
      dosage: dosage,
      course: course,
      createdAt: DateTime.now(),
      notes: notes,
    );

    final updatedMeds = currentMeds.copyWith(
      medications: List.from(currentMeds.medications)..add(newMed),
    );

    await _saveMedicationTrackingUseCase.call(updatedMeds);
    emit(MedicationTrackingState(medications: updatedMeds, isLoading: false));
  }
}

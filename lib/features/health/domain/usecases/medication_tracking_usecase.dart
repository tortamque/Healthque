import 'package:healthque/core/usecases/usecase.dart';
import 'package:healthque/features/health/health.dart';

class GetMedicationTrackingUseCase implements UseCase<Medications?, void> {
  final MedicationTrackingRepository repository;

  GetMedicationTrackingUseCase(this.repository);

  @override
  Medications? call(void params) => repository.getMedications();
}

class SaveMedicationTrackingUseCase implements AsyncUseCase<void, Medications> {
  final MedicationTrackingRepository repository;

  SaveMedicationTrackingUseCase(this.repository);

  @override
  Future<void> call(Medications params) => repository.saveMedications(params);
}

class DeleteMedicationTrackingUseCase implements AsyncUseCase<void, Medication> {
  final MedicationTrackingRepository repository;

  DeleteMedicationTrackingUseCase(this.repository);

  @override
  Future<void> call(Medication params) => repository.deleteMedication(params);
}

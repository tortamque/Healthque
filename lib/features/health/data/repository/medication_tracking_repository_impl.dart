import 'package:healthque/features/health/health.dart';

class MedicationTrackingRepositoryImpl implements MedicationTrackingRepository {
  final MedicationTrackingDbService _medicationTrackingDbService;

  MedicationTrackingRepositoryImpl(this._medicationTrackingDbService);

  @override
  Medications? getMedications() => _medicationTrackingDbService.getMedications();

  @override
  Future<void> saveMedications(Medications medications) => _medicationTrackingDbService.saveMedications(medications);

  @override
  Future<void> deleteMedication(Medication medication) => _medicationTrackingDbService.deleteMedication(medication);
}

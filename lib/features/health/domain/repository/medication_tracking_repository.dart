import 'package:healthque/features/health/health.dart';

abstract class MedicationTrackingRepository {
  Medications? getMedications();
  Future<void> saveMedications(Medications medication);
  Future<void> deleteMedication(Medication medication);
}

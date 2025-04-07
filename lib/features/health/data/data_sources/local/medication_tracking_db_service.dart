import 'package:healthque/core/utils/hive/hive.dart';
import 'package:healthque/features/health/health.dart';

abstract class MedicationTrackingDbService {
  Medications? getMedications();
  Future<void> saveMedications(Medications medication);
  Future<void> deleteMedication(Medication medication);
}

class MedicationTrackingDbServiceImpl implements MedicationTrackingDbService {
  final MedicationTrackingHiveManager _manager;

  MedicationTrackingDbServiceImpl(this._manager);

  @override
  Medications? getMedications() => _manager.medicationTrackingBox.get(_manager.hiveKey);

  @override
  Future<void> saveMedications(Medications medications) =>
      _manager.medicationTrackingBox.put(_manager.hiveKey, medications);

  @override
  Future<void> deleteMedication(Medication medication) async {
    final currentMedications = getMedications();
    if (currentMedications != null) {
      final updatedList = List<Medication>.from(currentMedications.medications);

      updatedList.remove(medication);

      final updatedMedications = Medications(medications: updatedList);
      await saveMedications(updatedMedications);
    }
  }
}

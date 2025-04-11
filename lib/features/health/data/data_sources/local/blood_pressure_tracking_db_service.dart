import 'package:healthque/core/utils/hive/blood_pressure_tracking_hive_manager.dart';
import 'package:healthque/features/health/health.dart';

abstract class BloodPressureTrackingDbService {
  BloodPressureRecords? getBloodPressureRecords();
  Future<void> saveBloodPressureRecords(BloodPressureRecords records);
  Future<void> deleteBloodPressureRecord(BloodPressureRecord record);
}

class BloodPressureTrackingDbServiceImpl implements BloodPressureTrackingDbService {
  final BloodPressureTrackingHiveManager _manager;

  BloodPressureTrackingDbServiceImpl(this._manager);

  @override
  BloodPressureRecords? getBloodPressureRecords() => _manager.bloodPressureBox.get(_manager.hiveKey);

  @override
  Future<void> saveBloodPressureRecords(BloodPressureRecords records) =>
      _manager.bloodPressureBox.put(_manager.hiveKey, records);

  @override
  Future<void> deleteBloodPressureRecord(BloodPressureRecord record) async {
    final currentRecords = getBloodPressureRecords();
    if (currentRecords != null) {
      final updatedList = List<BloodPressureRecord>.from(currentRecords.records)..removeWhere((r) => r.id == record.id);
      final updatedRecords = BloodPressureRecords(records: updatedList);
      await saveBloodPressureRecords(updatedRecords);
    }
  }
}

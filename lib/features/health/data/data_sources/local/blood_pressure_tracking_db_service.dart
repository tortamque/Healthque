import 'package:healthque/core/utils/hive/hive.dart';
import 'package:healthque/features/health/health.dart';

abstract class BloodPressureTrackingDbService {
  BloodPressureRecords? getBloodPressureRecords();
  Future<void> saveBloodPressureRecords(BloodPressureRecords records);
  Future<void> deleteBloodPressureRecord(BloodPressureRecord record);
}

class BloodPressureTrackingDbServiceImpl implements BloodPressureTrackingDbService {
  final HiveManager _manager;

  BloodPressureTrackingDbServiceImpl(this._manager);

  @override
  BloodPressureRecords? getBloodPressureRecords() => _manager.box.get(_manager.hiveKey);

  @override
  Future<void> saveBloodPressureRecords(BloodPressureRecords records) => _manager.box.put(_manager.hiveKey, records);

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

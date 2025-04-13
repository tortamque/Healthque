import 'package:healthque/core/utils/utils.dart';
import 'package:healthque/features/health/health.dart';

abstract class BloodSugarTrackingDbService {
  BloodSugarRecords? getBloodSugarRecords();
  Future<void> saveBloodSugarRecords(BloodSugarRecords records);
  Future<void> deleteBloodSugarRecord(BloodSugarRecord record);
}

class BloodSugarTrackingDbServiceImpl implements BloodSugarTrackingDbService {
  final BloodSugarTrackingHiveManager _manager;

  BloodSugarTrackingDbServiceImpl(this._manager);

  @override
  BloodSugarRecords? getBloodSugarRecords() => _manager.bloodSugarRecordsBox.get(_manager.hiveKey);

  @override
  Future<void> saveBloodSugarRecords(BloodSugarRecords records) =>
      _manager.bloodSugarRecordsBox.put(_manager.hiveKey, records);

  @override
  Future<void> deleteBloodSugarRecord(BloodSugarRecord record) async {
    final currentRecords = getBloodSugarRecords();
    if (currentRecords != null) {
      final updatedList = List<BloodSugarRecord>.from(currentRecords.records)..removeWhere((r) => r.id == record.id);
      final updatedRecords = BloodSugarRecords(records: updatedList);
      await saveBloodSugarRecords(updatedRecords);
    }
  }
}

import 'package:healthque/core/utils/utils.dart';
import 'package:healthque/features/health/health.dart';

abstract class WaterTrackingDbService {
  WaterRecords? getWaterRecords();
  Future<void> saveWaterRecords(WaterRecords records);
  Future<void> deleteWaterRecord(WaterRecord record);
}

class WaterTrackingDbServiceImpl implements WaterTrackingDbService {
  final HiveManager _manager;
  WaterTrackingDbServiceImpl(this._manager);

  @override
  WaterRecords? getWaterRecords() => _manager.box.get(_manager.hiveKey);

  @override
  Future<void> saveWaterRecords(WaterRecords records) => _manager.box.put(_manager.hiveKey, records);

  @override
  Future<void> deleteWaterRecord(WaterRecord record) async {
    final current = getWaterRecords();
    if (current != null) {
      final updatedList = List<WaterRecord>.from(current.records)..removeWhere((r) => r.id == record.id);
      final updatedRecords = WaterRecords(records: updatedList);
      await saveWaterRecords(updatedRecords);
    }
  }
}

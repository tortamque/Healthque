import 'package:healthque/core/utils/hive/hive.dart';
import 'package:healthque/features/health/health.dart';

abstract class TemperatureTrackingDbService {
  TemperatureRecords? getTemperatureRecords();
  Future<void> saveTemperatureRecords(TemperatureRecords records);
  Future<void> deleteTemperatureRecord(TemperatureRecord record);
}

class TemperatureTrackingDbServiceImpl implements TemperatureTrackingDbService {
  final HiveManager _manager;

  TemperatureTrackingDbServiceImpl(this._manager);

  @override
  TemperatureRecords? getTemperatureRecords() => _manager.box.get(_manager.hiveKey);

  @override
  Future<void> saveTemperatureRecords(TemperatureRecords records) => _manager.box.put(_manager.hiveKey, records);

  @override
  Future<void> deleteTemperatureRecord(TemperatureRecord record) async {
    final currentRecords = getTemperatureRecords();
    if (currentRecords != null) {
      final updatedList = List<TemperatureRecord>.from(currentRecords.records)..removeWhere((r) => r.id == record.id);
      final updatedRecords = TemperatureRecords(records: updatedList);
      await saveTemperatureRecords(updatedRecords);
    }
  }
}

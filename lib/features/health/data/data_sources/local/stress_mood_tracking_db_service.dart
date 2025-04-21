import 'package:healthque/core/utils/utils.dart';
import 'package:healthque/features/health/health.dart';

abstract class StressMoodTrackingDbService {
  StressMoodRecords? getStressMoodRecords();
  Future<void> saveStressMoodRecords(StressMoodRecords records);
  Future<void> deleteStressMoodRecord(StressMoodRecord record);
}

class StressMoodTrackingDbServiceImpl implements StressMoodTrackingDbService {
  final HiveManager _manager;

  StressMoodTrackingDbServiceImpl(this._manager);

  @override
  StressMoodRecords? getStressMoodRecords() => _manager.box.get(_manager.hiveKey);

  @override
  Future<void> saveStressMoodRecords(StressMoodRecords records) => _manager.box.put(_manager.hiveKey, records);

  @override
  Future<void> deleteStressMoodRecord(StressMoodRecord record) async {
    final current = getStressMoodRecords();
    if (current != null) {
      final updatedList = List<StressMoodRecord>.from(current.records)..removeWhere((r) => r.id == record.id);
      final updatedRecords = StressMoodRecords(records: updatedList);
      await saveStressMoodRecords(updatedRecords);
    }
  }
}

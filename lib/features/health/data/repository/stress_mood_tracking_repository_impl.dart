import 'package:healthque/features/health/health.dart';

class StressMoodTrackingRepositoryImpl implements StressMoodTrackingRepository {
  final StressMoodTrackingDbService _dbService;

  StressMoodTrackingRepositoryImpl(this._dbService);

  @override
  StressMoodRecords? getStressMoodRecords() => _dbService.getStressMoodRecords();

  @override
  Future<void> saveStressMoodRecords(StressMoodRecords records) => _dbService.saveStressMoodRecords(records);

  @override
  Future<void> deleteStressMoodRecord(StressMoodRecord record) => _dbService.deleteStressMoodRecord(record);
}

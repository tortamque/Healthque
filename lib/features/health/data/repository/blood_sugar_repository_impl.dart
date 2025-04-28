import 'package:healthque/features/health/health.dart';

class BloodSugarTrackingRepositoryImpl implements BloodSugarTrackingRepository {
  final BloodSugarTrackingDbService _dbService;

  BloodSugarTrackingRepositoryImpl(this._dbService);

  @override
  BloodSugarRecords? getBloodSugarRecords() => _dbService.getBloodSugarRecords();

  @override
  Future<void> saveBloodSugarRecords(BloodSugarRecords records) => _dbService.saveBloodSugarRecords(records);

  @override
  Future<void> deleteBloodSugarRecord(BloodSugarRecord record) => _dbService.deleteBloodSugarRecord(record);
}

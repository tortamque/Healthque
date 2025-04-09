import 'package:healthque/features/health/health.dart';

class WaterTrackingRepositoryImpl implements WaterTrackingRepository {
  final WaterTrackingDbService _dbService;
  WaterTrackingRepositoryImpl(this._dbService);

  @override
  WaterRecords? getWaterRecords() => _dbService.getWaterRecords();

  @override
  Future<void> saveWaterRecords(WaterRecords records) => _dbService.saveWaterRecords(records);

  @override
  Future<void> deleteWaterRecord(WaterRecord record) => _dbService.deleteWaterRecord(record);
}

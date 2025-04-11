import 'package:healthque/features/health/health.dart';

class BloodPressureTrackingRepositoryImpl implements BloodPressureTrackingRepository {
  final BloodPressureTrackingDbService _dbService;

  BloodPressureTrackingRepositoryImpl(this._dbService);

  @override
  BloodPressureRecords? getBloodPressureRecords() => _dbService.getBloodPressureRecords();

  @override
  Future<void> saveBloodPressureRecords(BloodPressureRecords records) => _dbService.saveBloodPressureRecords(records);

  @override
  Future<void> deleteBloodPressureRecord(BloodPressureRecord record) => _dbService.deleteBloodPressureRecord(record);
}

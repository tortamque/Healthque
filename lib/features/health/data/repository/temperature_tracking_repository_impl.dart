import 'package:healthque/features/health/health.dart';

class TemperatureTrackingRepositoryImpl implements TemperatureTrackingRepository {
  final TemperatureTrackingDbService _dbService;

  TemperatureTrackingRepositoryImpl(this._dbService);

  @override
  TemperatureRecords? getTemperatureRecords() => _dbService.getTemperatureRecords();

  @override
  Future<void> saveTemperatureRecords(TemperatureRecords records) => _dbService.saveTemperatureRecords(records);

  @override
  Future<void> deleteTemperatureRecord(TemperatureRecord record) => _dbService.deleteTemperatureRecord(record);
}

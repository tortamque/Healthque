import 'package:healthque/features/health/health.dart';

abstract class WaterTrackingRepository {
  WaterRecords? getWaterRecords();
  Future<void> saveWaterRecords(WaterRecords records);
  Future<void> deleteWaterRecord(WaterRecord record);
}

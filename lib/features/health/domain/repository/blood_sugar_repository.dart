import 'package:healthque/features/health/health.dart';

abstract class BloodSugarTrackingRepository {
  BloodSugarRecords? getBloodSugarRecords();
  Future<void> saveBloodSugarRecords(BloodSugarRecords records);
  Future<void> deleteBloodSugarRecord(BloodSugarRecord record);
}

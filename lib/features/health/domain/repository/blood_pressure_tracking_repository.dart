import 'package:healthque/features/health/health.dart';

abstract class BloodPressureTrackingRepository {
  BloodPressureRecords? getBloodPressureRecords();
  Future<void> saveBloodPressureRecords(BloodPressureRecords records);
  Future<void> deleteBloodPressureRecord(BloodPressureRecord record);
}

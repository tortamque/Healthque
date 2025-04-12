import 'package:healthque/features/health/health.dart';

abstract class StressMoodTrackingRepository {
  StressMoodRecords? getStressMoodRecords();
  Future<void> saveStressMoodRecords(StressMoodRecords records);
  Future<void> deleteStressMoodRecord(StressMoodRecord record);
}

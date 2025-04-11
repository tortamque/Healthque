import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'blood_pressure_record.freezed.dart';
part 'blood_pressure_record.g.dart';

@freezed
@HiveType(typeId: 19, adapterName: 'BloodPressureRecordAdapter')
abstract class BloodPressureRecord with _$BloodPressureRecord {
  const factory BloodPressureRecord({
    @HiveField(0) required int id,
    @HiveField(1) required DateTime measurementTime,
    @HiveField(2) required int systolic,
    @HiveField(3) required int diastolic,
  }) = _BloodPressureRecord;

  factory BloodPressureRecord.fromJson(Map<String, dynamic> json) => _$BloodPressureRecordFromJson(json);
}

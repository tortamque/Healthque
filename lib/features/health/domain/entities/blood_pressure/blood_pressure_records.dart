import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'blood_pressure_record.dart';

part 'blood_pressure_records.freezed.dart';
part 'blood_pressure_records.g.dart';

@freezed
@HiveType(typeId: 20, adapterName: 'BloodPressureRecordsAdapter')
abstract class BloodPressureRecords with _$BloodPressureRecords {
  const factory BloodPressureRecords({
    @HiveField(0) required List<BloodPressureRecord> records,
  }) = _BloodPressureRecords;

  factory BloodPressureRecords.fromJson(Map<String, dynamic> json) => _$BloodPressureRecordsFromJson(json);
}

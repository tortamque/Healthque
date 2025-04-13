import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'blood_sugar_record.dart';

part 'blood_sugar_records.freezed.dart';
part 'blood_sugar_records.g.dart';

@freezed
@HiveType(typeId: 25, adapterName: 'BloodSugarRecordsAdapter')
abstract class BloodSugarRecords with _$BloodSugarRecords {
  const factory BloodSugarRecords({
    @HiveField(0) required List<BloodSugarRecord> records,
  }) = _BloodSugarRecords;

  factory BloodSugarRecords.fromJson(Map<String, dynamic> json) => _$BloodSugarRecordsFromJson(json);
}

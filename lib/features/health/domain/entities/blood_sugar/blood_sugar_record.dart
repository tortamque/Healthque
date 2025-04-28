import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'blood_sugar_record.freezed.dart';
part 'blood_sugar_record.g.dart';

@freezed
@HiveType(typeId: 24, adapterName: 'BloodSugarRecordAdapter')
abstract class BloodSugarRecord with _$BloodSugarRecord {
  const factory BloodSugarRecord({
    @HiveField(0) required int id,
    @HiveField(1) required DateTime measurementTime,
    @HiveField(2) required double glucose,
  }) = _BloodSugarRecord;

  factory BloodSugarRecord.fromJson(Map<String, dynamic> json) => _$BloodSugarRecordFromJson(json);
}

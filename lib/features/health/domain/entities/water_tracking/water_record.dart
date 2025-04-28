import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'water_record.freezed.dart';
part 'water_record.g.dart';

@freezed
@HiveType(typeId: 11, adapterName: 'WaterRecordAdapter')
abstract class WaterRecord with _$WaterRecord {
  const factory WaterRecord({
    @HiveField(0) required int id,
    @HiveField(1) required DateTime datetime,
    @HiveField(2) required double amount,
  }) = _WaterRecord;

  factory WaterRecord.fromJson(Map<String, dynamic> json) => _$WaterRecordFromJson(json);
}

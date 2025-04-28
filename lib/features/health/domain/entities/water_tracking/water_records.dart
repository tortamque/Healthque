import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/features/health/health.dart';
import 'package:hive/hive.dart';

part 'water_records.freezed.dart';
part 'water_records.g.dart';

@freezed
@HiveType(typeId: 12, adapterName: 'WaterRecordsAdapter')
abstract class WaterRecords with _$WaterRecords {
  const factory WaterRecords({
    @HiveField(0) required List<WaterRecord> records,
  }) = _WaterRecords;

  factory WaterRecords.fromJson(Map<String, dynamic> json) => _$WaterRecordsFromJson(json);
}

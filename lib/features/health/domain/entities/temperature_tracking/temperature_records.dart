import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'temperature_record.dart';

part 'temperature_records.freezed.dart';
part 'temperature_records.g.dart';

@freezed
@HiveType(typeId: 18, adapterName: 'TemperatureRecordsAdapter')
abstract class TemperatureRecords with _$TemperatureRecords {
  const factory TemperatureRecords({
    @HiveField(0) required List<TemperatureRecord> records,
  }) = _TemperatureRecords;

  factory TemperatureRecords.fromJson(Map<String, dynamic> json) => _$TemperatureRecordsFromJson(json);
}

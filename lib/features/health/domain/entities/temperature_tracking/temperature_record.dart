import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'temperature_record.freezed.dart';
part 'temperature_record.g.dart';

@freezed
@HiveType(typeId: 13, adapterName: 'TemperatureRecordAdapter')
abstract class TemperatureRecord with _$TemperatureRecord {
  const factory TemperatureRecord({
    @HiveField(0) required int id,
    @HiveField(1) required DateTime measurementTime,
    @HiveField(2) required double temperature,
  }) = _TemperatureRecord;

  factory TemperatureRecord.fromJson(Map<String, dynamic> json) => _$TemperatureRecordFromJson(json);
}

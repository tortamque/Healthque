import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'stress_mood_record.freezed.dart';
part 'stress_mood_record.g.dart';

@freezed
@HiveType(typeId: 22, adapterName: 'StressMoodRecordAdapter')
abstract class StressMoodRecord with _$StressMoodRecord {
  const factory StressMoodRecord({
    @HiveField(0) required int id,
    @HiveField(1) required DateTime measurementTime,
    @HiveField(2) required int stress,
    @HiveField(3) required int mood,
  }) = _StressMoodRecord;

  factory StressMoodRecord.fromJson(Map<String, dynamic> json) => _$StressMoodRecordFromJson(json);
}

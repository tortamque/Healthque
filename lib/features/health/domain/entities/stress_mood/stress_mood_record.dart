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
    @HiveField(2) required int stress, // stress scale: 1-10
    @HiveField(3) required int mood, // mood scale: 1-5 (each emoji represents 1 point)
  }) = _StressMoodRecord;

  factory StressMoodRecord.fromJson(Map<String, dynamic> json) => _$StressMoodRecordFromJson(json);
}

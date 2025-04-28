import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'stress_mood_record.dart';

part 'stress_mood_records.freezed.dart';
part 'stress_mood_records.g.dart';

@freezed
@HiveType(typeId: 23, adapterName: 'StressMoodRecordsAdapter')
abstract class StressMoodRecords with _$StressMoodRecords {
  const factory StressMoodRecords({
    @HiveField(0) required List<StressMoodRecord> records,
  }) = _StressMoodRecords;

  factory StressMoodRecords.fromJson(Map<String, dynamic> json) => _$StressMoodRecordsFromJson(json);
}

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/features/health/health.dart';
import 'package:hive/hive.dart';

part 'course_treatment.freezed.dart';
part 'course_treatment.g.dart';

@freezed
@HiveType(typeId: 14, adapterName: 'CourseTreatmentAdapter')
abstract class CourseTreatment with _$CourseTreatment {
  const factory CourseTreatment({
    @HiveField(0) required int id,
    @HiveField(1) required List<CourseTreatmentEntry> entries,
    @HiveField(2) required DateTime courseStart,
    @HiveField(3) required DateTime courseEnd,
    @HiveField(4) required DateTime medicationTime,
    @HiveField(5) required DateTimeComponents repeatInterval,
  }) = _CourseTreatment;

  factory CourseTreatment.fromJson(Map<String, dynamic> json) => _$CourseTreatmentFromJson(json);
}

@freezed
@HiveType(typeId: 15, adapterName: 'CourseTreatmentEntryAdapter')
abstract class CourseTreatmentEntry with _$CourseTreatmentEntry {
  const factory CourseTreatmentEntry({
    @HiveField(0) required String name,
    @HiveField(1) required MedicationType medicationType,
    @HiveField(2) required String dosage,
    @HiveField(3) String? notes,
  }) = _CourseTreatmentEntry;

  factory CourseTreatmentEntry.fromJson(Map<String, dynamic> json) => _$CourseTreatmentEntryFromJson(json);
}

@freezed
@HiveType(typeId: 16, adapterName: 'CourseTreatmentsAdapter')
abstract class CourseTreatments with _$CourseTreatments {
  const factory CourseTreatments({
    @HiveField(0) required List<CourseTreatment> courses,
  }) = _CourseTreatments;

  factory CourseTreatments.fromJson(Map<String, dynamic> json) => _$CourseTreatmentsFromJson(json);
}

class DateTimeComponentsAdapter extends TypeAdapter<DateTimeComponents> {
  @override
  final int typeId = 17;

  @override
  DateTimeComponents read(BinaryReader reader) {
    final index = reader.readInt();
    return DateTimeComponents.values[index];
  }

  @override
  void write(BinaryWriter writer, DateTimeComponents obj) {
    writer.writeInt(obj.index);
  }
}

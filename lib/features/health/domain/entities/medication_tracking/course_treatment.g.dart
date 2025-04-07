// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_treatment.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CourseTreatmentAdapter extends TypeAdapter<CourseTreatment> {
  @override
  final int typeId = 14;

  @override
  CourseTreatment read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CourseTreatment(
      id: fields[0] as int,
      entries: (fields[1] as List).cast<CourseTreatmentEntry>(),
      courseStart: fields[2] as DateTime,
      courseEnd: fields[3] as DateTime,
      medicationTime: fields[4] as DateTime,
      repeatInterval: fields[5] as DateTimeComponents,
    );
  }

  @override
  void write(BinaryWriter writer, CourseTreatment obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.entries)
      ..writeByte(2)
      ..write(obj.courseStart)
      ..writeByte(3)
      ..write(obj.courseEnd)
      ..writeByte(4)
      ..write(obj.medicationTime)
      ..writeByte(5)
      ..write(obj.repeatInterval);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CourseTreatmentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CourseTreatmentEntryAdapter extends TypeAdapter<CourseTreatmentEntry> {
  @override
  final int typeId = 15;

  @override
  CourseTreatmentEntry read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CourseTreatmentEntry(
      name: fields[0] as String,
      medicationType: fields[1] as MedicationType,
      dosage: fields[2] as String,
      notes: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CourseTreatmentEntry obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.medicationType)
      ..writeByte(2)
      ..write(obj.dosage)
      ..writeByte(3)
      ..write(obj.notes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CourseTreatmentEntryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CourseTreatmentsAdapter extends TypeAdapter<CourseTreatments> {
  @override
  final int typeId = 16;

  @override
  CourseTreatments read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CourseTreatments(
      courses: (fields[0] as List).cast<CourseTreatment>(),
    );
  }

  @override
  void write(BinaryWriter writer, CourseTreatments obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.courses);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CourseTreatmentsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseTreatment _$CourseTreatmentFromJson(Map<String, dynamic> json) =>
    _CourseTreatment(
      id: (json['id'] as num).toInt(),
      entries: (json['entries'] as List<dynamic>)
          .map((e) => CourseTreatmentEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      courseStart: DateTime.parse(json['courseStart'] as String),
      courseEnd: DateTime.parse(json['courseEnd'] as String),
      medicationTime: DateTime.parse(json['medicationTime'] as String),
      repeatInterval:
          $enumDecode(_$DateTimeComponentsEnumMap, json['repeatInterval']),
    );

Map<String, dynamic> _$CourseTreatmentToJson(_CourseTreatment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'entries': instance.entries,
      'courseStart': instance.courseStart.toIso8601String(),
      'courseEnd': instance.courseEnd.toIso8601String(),
      'medicationTime': instance.medicationTime.toIso8601String(),
      'repeatInterval': _$DateTimeComponentsEnumMap[instance.repeatInterval]!,
    };

const _$DateTimeComponentsEnumMap = {
  DateTimeComponents.time: 'time',
  DateTimeComponents.dayOfWeekAndTime: 'dayOfWeekAndTime',
  DateTimeComponents.dayOfMonthAndTime: 'dayOfMonthAndTime',
  DateTimeComponents.dateAndTime: 'dateAndTime',
};

_CourseTreatmentEntry _$CourseTreatmentEntryFromJson(
        Map<String, dynamic> json) =>
    _CourseTreatmentEntry(
      name: json['name'] as String,
      medicationType:
          $enumDecode(_$MedicationTypeEnumMap, json['medicationType']),
      dosage: json['dosage'] as String,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$CourseTreatmentEntryToJson(
        _CourseTreatmentEntry instance) =>
    <String, dynamic>{
      'name': instance.name,
      'medicationType': _$MedicationTypeEnumMap[instance.medicationType]!,
      'dosage': instance.dosage,
      'notes': instance.notes,
    };

const _$MedicationTypeEnumMap = {
  MedicationType.tablet: 'tablet',
  MedicationType.capsule: 'capsule',
  MedicationType.injection: 'injection',
  MedicationType.syrup: 'syrup',
  MedicationType.other: 'other',
};

_CourseTreatments _$CourseTreatmentsFromJson(Map<String, dynamic> json) =>
    _CourseTreatments(
      courses: (json['courses'] as List<dynamic>)
          .map((e) => CourseTreatment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CourseTreatmentsToJson(_CourseTreatments instance) =>
    <String, dynamic>{
      'courses': instance.courses,
    };

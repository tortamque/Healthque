// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicationAdapter extends TypeAdapter<Medication> {
  @override
  final int typeId = 9;

  @override
  Medication read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Medication(
      id: fields[0] as int,
      type: fields[1] as MedicationType,
      dosage: fields[2] as String,
      course: fields[3] as String,
      createdAt: fields[4] as DateTime,
      notes: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Medication obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.dosage)
      ..writeByte(3)
      ..write(obj.course)
      ..writeByte(4)
      ..write(obj.createdAt)
      ..writeByte(5)
      ..write(obj.notes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MedicationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Medication _$MedicationFromJson(Map<String, dynamic> json) => _Medication(
      id: (json['id'] as num).toInt(),
      type: $enumDecode(_$MedicationTypeEnumMap, json['type']),
      dosage: json['dosage'] as String,
      course: json['course'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$MedicationToJson(_Medication instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$MedicationTypeEnumMap[instance.type]!,
      'dosage': instance.dosage,
      'course': instance.course,
      'createdAt': instance.createdAt.toIso8601String(),
      'notes': instance.notes,
    };

const _$MedicationTypeEnumMap = {
  MedicationType.tablet: 'tablet',
  MedicationType.capsule: 'capsule',
  MedicationType.injection: 'injection',
  MedicationType.syrup: 'syrup',
  MedicationType.other: 'other',
};

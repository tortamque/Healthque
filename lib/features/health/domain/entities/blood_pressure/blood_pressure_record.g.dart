// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_pressure_record.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BloodPressureRecordAdapter extends TypeAdapter<BloodPressureRecord> {
  @override
  final int typeId = 19;

  @override
  BloodPressureRecord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BloodPressureRecord(
      id: fields[0] as int,
      measurementTime: fields[1] as DateTime,
      systolic: fields[2] as int,
      diastolic: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, BloodPressureRecord obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.measurementTime)
      ..writeByte(2)
      ..write(obj.systolic)
      ..writeByte(3)
      ..write(obj.diastolic);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BloodPressureRecordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BloodPressureRecord _$BloodPressureRecordFromJson(Map<String, dynamic> json) =>
    _BloodPressureRecord(
      id: (json['id'] as num).toInt(),
      measurementTime: DateTime.parse(json['measurementTime'] as String),
      systolic: (json['systolic'] as num).toInt(),
      diastolic: (json['diastolic'] as num).toInt(),
    );

Map<String, dynamic> _$BloodPressureRecordToJson(
        _BloodPressureRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'measurementTime': instance.measurementTime.toIso8601String(),
      'systolic': instance.systolic,
      'diastolic': instance.diastolic,
    };

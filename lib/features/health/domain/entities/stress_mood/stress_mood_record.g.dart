// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stress_mood_record.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StressMoodRecordAdapter extends TypeAdapter<StressMoodRecord> {
  @override
  final int typeId = 22;

  @override
  StressMoodRecord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StressMoodRecord(
      id: fields[0] as int,
      measurementTime: fields[1] as DateTime,
      stress: fields[2] as int,
      mood: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, StressMoodRecord obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.measurementTime)
      ..writeByte(2)
      ..write(obj.stress)
      ..writeByte(3)
      ..write(obj.mood);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StressMoodRecordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StressMoodRecord _$StressMoodRecordFromJson(Map<String, dynamic> json) =>
    _StressMoodRecord(
      id: (json['id'] as num).toInt(),
      measurementTime: DateTime.parse(json['measurementTime'] as String),
      stress: (json['stress'] as num).toInt(),
      mood: (json['mood'] as num).toInt(),
    );

Map<String, dynamic> _$StressMoodRecordToJson(_StressMoodRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'measurementTime': instance.measurementTime.toIso8601String(),
      'stress': instance.stress,
      'mood': instance.mood,
    };

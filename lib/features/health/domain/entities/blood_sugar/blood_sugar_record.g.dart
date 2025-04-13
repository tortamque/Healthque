// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_sugar_record.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BloodSugarRecordAdapter extends TypeAdapter<BloodSugarRecord> {
  @override
  final int typeId = 24;

  @override
  BloodSugarRecord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BloodSugarRecord(
      id: fields[0] as int,
      measurementTime: fields[1] as DateTime,
      glucose: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, BloodSugarRecord obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.measurementTime)
      ..writeByte(2)
      ..write(obj.glucose);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BloodSugarRecordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BloodSugarRecord _$BloodSugarRecordFromJson(Map<String, dynamic> json) =>
    _BloodSugarRecord(
      id: (json['id'] as num).toInt(),
      measurementTime: DateTime.parse(json['measurementTime'] as String),
      glucose: (json['glucose'] as num).toDouble(),
    );

Map<String, dynamic> _$BloodSugarRecordToJson(_BloodSugarRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'measurementTime': instance.measurementTime.toIso8601String(),
      'glucose': instance.glucose,
    };

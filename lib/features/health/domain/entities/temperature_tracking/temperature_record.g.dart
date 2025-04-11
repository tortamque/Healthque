// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature_record.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TemperatureRecordAdapter extends TypeAdapter<TemperatureRecord> {
  @override
  final int typeId = 13;

  @override
  TemperatureRecord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TemperatureRecord(
      id: fields[0] as int,
      measurementTime: fields[1] as DateTime,
      temperature: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, TemperatureRecord obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.measurementTime)
      ..writeByte(2)
      ..write(obj.temperature);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TemperatureRecordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TemperatureRecord _$TemperatureRecordFromJson(Map<String, dynamic> json) =>
    _TemperatureRecord(
      id: (json['id'] as num).toInt(),
      measurementTime: DateTime.parse(json['measurementTime'] as String),
      temperature: (json['temperature'] as num).toDouble(),
    );

Map<String, dynamic> _$TemperatureRecordToJson(_TemperatureRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'measurementTime': instance.measurementTime.toIso8601String(),
      'temperature': instance.temperature,
    };

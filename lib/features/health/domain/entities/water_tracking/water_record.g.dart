// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'water_record.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WaterRecordAdapter extends TypeAdapter<WaterRecord> {
  @override
  final int typeId = 11;

  @override
  WaterRecord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WaterRecord(
      id: fields[0] as int,
      datetime: fields[1] as DateTime,
      amount: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, WaterRecord obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.datetime)
      ..writeByte(2)
      ..write(obj.amount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WaterRecordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WaterRecord _$WaterRecordFromJson(Map<String, dynamic> json) => _WaterRecord(
      id: (json['id'] as num).toInt(),
      datetime: DateTime.parse(json['datetime'] as String),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$WaterRecordToJson(_WaterRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'datetime': instance.datetime.toIso8601String(),
      'amount': instance.amount,
    };

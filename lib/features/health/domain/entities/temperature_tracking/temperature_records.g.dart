// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature_records.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TemperatureRecordsAdapter extends TypeAdapter<TemperatureRecords> {
  @override
  final int typeId = 18;

  @override
  TemperatureRecords read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TemperatureRecords(
      records: (fields[0] as List).cast<TemperatureRecord>(),
    );
  }

  @override
  void write(BinaryWriter writer, TemperatureRecords obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.records);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TemperatureRecordsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TemperatureRecords _$TemperatureRecordsFromJson(Map<String, dynamic> json) =>
    _TemperatureRecords(
      records: (json['records'] as List<dynamic>)
          .map((e) => TemperatureRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TemperatureRecordsToJson(_TemperatureRecords instance) =>
    <String, dynamic>{
      'records': instance.records,
    };

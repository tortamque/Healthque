// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'water_records.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WaterRecordsAdapter extends TypeAdapter<WaterRecords> {
  @override
  final int typeId = 12;

  @override
  WaterRecords read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WaterRecords(
      records: (fields[0] as List).cast<WaterRecord>(),
    );
  }

  @override
  void write(BinaryWriter writer, WaterRecords obj) {
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
      other is WaterRecordsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WaterRecords _$WaterRecordsFromJson(Map<String, dynamic> json) =>
    _WaterRecords(
      records: (json['records'] as List<dynamic>)
          .map((e) => WaterRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WaterRecordsToJson(_WaterRecords instance) =>
    <String, dynamic>{
      'records': instance.records,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stress_mood_records.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StressMoodRecordsAdapter extends TypeAdapter<StressMoodRecords> {
  @override
  final int typeId = 23;

  @override
  StressMoodRecords read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StressMoodRecords(
      records: (fields[0] as List).cast<StressMoodRecord>(),
    );
  }

  @override
  void write(BinaryWriter writer, StressMoodRecords obj) {
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
      other is StressMoodRecordsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StressMoodRecords _$StressMoodRecordsFromJson(Map<String, dynamic> json) =>
    _StressMoodRecords(
      records: (json['records'] as List<dynamic>)
          .map((e) => StressMoodRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StressMoodRecordsToJson(_StressMoodRecords instance) =>
    <String, dynamic>{
      'records': instance.records,
    };

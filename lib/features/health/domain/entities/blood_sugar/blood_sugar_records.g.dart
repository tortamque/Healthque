// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_sugar_records.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BloodSugarRecordsAdapter extends TypeAdapter<BloodSugarRecords> {
  @override
  final int typeId = 25;

  @override
  BloodSugarRecords read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BloodSugarRecords(
      records: (fields[0] as List).cast<BloodSugarRecord>(),
    );
  }

  @override
  void write(BinaryWriter writer, BloodSugarRecords obj) {
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
      other is BloodSugarRecordsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BloodSugarRecords _$BloodSugarRecordsFromJson(Map<String, dynamic> json) =>
    _BloodSugarRecords(
      records: (json['records'] as List<dynamic>)
          .map((e) => BloodSugarRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BloodSugarRecordsToJson(_BloodSugarRecords instance) =>
    <String, dynamic>{
      'records': instance.records,
    };

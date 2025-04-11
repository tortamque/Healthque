// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_pressure_records.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BloodPressureRecordsAdapter extends TypeAdapter<BloodPressureRecords> {
  @override
  final int typeId = 20;

  @override
  BloodPressureRecords read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BloodPressureRecords(
      records: (fields[0] as List).cast<BloodPressureRecord>(),
    );
  }

  @override
  void write(BinaryWriter writer, BloodPressureRecords obj) {
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
      other is BloodPressureRecordsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BloodPressureRecords _$BloodPressureRecordsFromJson(
        Map<String, dynamic> json) =>
    _BloodPressureRecords(
      records: (json['records'] as List<dynamic>)
          .map((e) => BloodPressureRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BloodPressureRecordsToJson(
        _BloodPressureRecords instance) =>
    <String, dynamic>{
      'records': instance.records,
    };

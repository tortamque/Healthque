// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medications.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicationsAdapter extends TypeAdapter<Medications> {
  @override
  final int typeId = 10;

  @override
  Medications read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Medications(
      medications: (fields[0] as List).cast<Medication>(),
    );
  }

  @override
  void write(BinaryWriter writer, Medications obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.medications);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MedicationsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Medications _$MedicationsFromJson(Map<String, dynamic> json) => _Medications(
      medications: (json['medications'] as List<dynamic>)
          .map((e) => Medication.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MedicationsToJson(_Medications instance) =>
    <String, dynamic>{
      'medications': instance.medications,
    };

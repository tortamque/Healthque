// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicationTypeAdapter extends TypeAdapter<MedicationType> {
  @override
  final int typeId = 8;

  @override
  MedicationType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return MedicationType.tablet;
      case 1:
        return MedicationType.capsule;
      case 2:
        return MedicationType.injection;
      case 3:
        return MedicationType.syrup;
      case 4:
        return MedicationType.other;
      default:
        return MedicationType.tablet;
    }
  }

  @override
  void write(BinaryWriter writer, MedicationType obj) {
    switch (obj) {
      case MedicationType.tablet:
        writer.writeByte(0);
        break;
      case MedicationType.capsule:
        writer.writeByte(1);
        break;
      case MedicationType.injection:
        writer.writeByte(2);
        break;
      case MedicationType.syrup:
        writer.writeByte(3);
        break;
      case MedicationType.other:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MedicationTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

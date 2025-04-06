// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkoutTypeAdapter extends TypeAdapter<WorkoutType> {
  @override
  final int typeId = 3;

  @override
  WorkoutType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return WorkoutType.running;
      case 1:
        return WorkoutType.swimming;
      case 2:
        return WorkoutType.cycling;
      case 3:
        return WorkoutType.weightTraining;
      case 4:
        return WorkoutType.walking;
      case 5:
        return WorkoutType.tennis;
      case 6:
        return WorkoutType.gymnastics;
      case 7:
        return WorkoutType.bouldering;
      default:
        return WorkoutType.running;
    }
  }

  @override
  void write(BinaryWriter writer, WorkoutType obj) {
    switch (obj) {
      case WorkoutType.running:
        writer.writeByte(0);
        break;
      case WorkoutType.swimming:
        writer.writeByte(1);
        break;
      case WorkoutType.cycling:
        writer.writeByte(2);
        break;
      case WorkoutType.weightTraining:
        writer.writeByte(3);
        break;
      case WorkoutType.walking:
        writer.writeByte(4);
        break;
      case WorkoutType.tennis:
        writer.writeByte(5);
        break;
      case WorkoutType.gymnastics:
        writer.writeByte(6);
        break;
      case WorkoutType.bouldering:
        writer.writeByte(7);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkoutTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

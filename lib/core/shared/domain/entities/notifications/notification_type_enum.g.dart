// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_type_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalNotificationTypeAdapter extends TypeAdapter<LocalNotificationType> {
  @override
  final int typeId = 5;

  @override
  LocalNotificationType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return LocalNotificationType.workout;
      case 1:
        return LocalNotificationType.water;
      case 2:
        return LocalNotificationType.courseTreatment;
      case 3:
        return LocalNotificationType.temperature;
      case 4:
        return LocalNotificationType.bloodPressure;
      case 5:
        return LocalNotificationType.bloodSugar;
      default:
        return LocalNotificationType.workout;
    }
  }

  @override
  void write(BinaryWriter writer, LocalNotificationType obj) {
    switch (obj) {
      case LocalNotificationType.workout:
        writer.writeByte(0);
        break;
      case LocalNotificationType.water:
        writer.writeByte(1);
        break;
      case LocalNotificationType.courseTreatment:
        writer.writeByte(2);
        break;
      case LocalNotificationType.temperature:
        writer.writeByte(3);
        break;
      case LocalNotificationType.bloodPressure:
        writer.writeByte(4);
        break;
      case LocalNotificationType.bloodSugar:
        writer.writeByte(5);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalNotificationTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

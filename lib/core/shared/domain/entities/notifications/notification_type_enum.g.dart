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

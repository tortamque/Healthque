// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalNotificationsAdapter extends TypeAdapter<LocalNotifications> {
  @override
  final int typeId = 7;

  @override
  LocalNotifications read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalNotifications(
      notifications: (fields[0] as List).cast<LocalNotification>(),
    );
  }

  @override
  void write(BinaryWriter writer, LocalNotifications obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.notifications);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalNotificationsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocalNotifications _$LocalNotificationsFromJson(Map<String, dynamic> json) =>
    _LocalNotifications(
      notifications: (json['notifications'] as List<dynamic>)
          .map((e) => LocalNotification.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocalNotificationsToJson(_LocalNotifications instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
    };

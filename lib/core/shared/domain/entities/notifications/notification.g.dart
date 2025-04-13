// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalNotificationAdapter extends TypeAdapter<LocalNotification> {
  @override
  final int typeId = 6;

  @override
  LocalNotification read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalNotification(
      id: fields[0] as int,
      type: fields[1] as LocalNotificationType,
      scheduledDate: fields[2] as DateTime,
      title: fields[3] as String,
      body: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LocalNotification obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.scheduledDate)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.body);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalNotificationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocalNotification _$LocalNotificationFromJson(Map<String, dynamic> json) =>
    _LocalNotification(
      id: (json['id'] as num).toInt(),
      type: $enumDecode(_$LocalNotificationTypeEnumMap, json['type']),
      scheduledDate: DateTime.parse(json['scheduledDate'] as String),
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$LocalNotificationToJson(_LocalNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$LocalNotificationTypeEnumMap[instance.type]!,
      'scheduledDate': instance.scheduledDate.toIso8601String(),
      'title': instance.title,
      'body': instance.body,
    };

const _$LocalNotificationTypeEnumMap = {
  LocalNotificationType.workout: 'workout',
  LocalNotificationType.water: 'water',
  LocalNotificationType.courseTreatment: 'courseTreatment',
  LocalNotificationType.temperature: 'temperature',
  LocalNotificationType.bloodPressure: 'bloodPressure',
  LocalNotificationType.bloodSugar: 'bloodSugar',
};

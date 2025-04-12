// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_preference.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ThemePreferenceAdapter extends TypeAdapter<ThemePreference> {
  @override
  final int typeId = 21;

  @override
  ThemePreference read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ThemePreference(
      seedColorValue: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ThemePreference obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.seedColorValue);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThemePreferenceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ThemePreference _$ThemePreferenceFromJson(Map<String, dynamic> json) =>
    _ThemePreference(
      seedColorValue: (json['seedColorValue'] as num).toInt(),
    );

Map<String, dynamic> _$ThemePreferenceToJson(_ThemePreference instance) =>
    <String, dynamic>{
      'seedColorValue': instance.seedColorValue,
    };

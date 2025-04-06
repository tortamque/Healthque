// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkoutAdapter extends TypeAdapter<_Workout> {
  @override
  final int typeId = 2;

  @override
  _Workout read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _Workout(
      workoutType: fields[0] as WorkoutType,
      durationMinutes: fields[1] as int,
      intensity: fields[2] as int,
      distance: fields[3] as double?,
      tags: (fields[4] as List?)?.cast<String>(),
      isFavorite: fields[5] as bool,
      moodRating: fields[6] as int,
      notes: fields[7] as String,
      createdAt: fields[8] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _Workout obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.workoutType)
      ..writeByte(1)
      ..write(obj.durationMinutes)
      ..writeByte(2)
      ..write(obj.intensity)
      ..writeByte(3)
      ..write(obj.distance)
      ..writeByte(5)
      ..write(obj.isFavorite)
      ..writeByte(6)
      ..write(obj.moodRating)
      ..writeByte(7)
      ..write(obj.notes)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.tags);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkoutAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Workout _$WorkoutFromJson(Map<String, dynamic> json) => _Workout(
      workoutType: $enumDecode(_$WorkoutTypeEnumMap, json['workoutType']),
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      intensity: (json['intensity'] as num).toInt(),
      distance: (json['distance'] as num?)?.toDouble(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isFavorite: json['isFavorite'] as bool,
      moodRating: (json['moodRating'] as num).toInt(),
      notes: json['notes'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$WorkoutToJson(_Workout instance) => <String, dynamic>{
      'workoutType': _$WorkoutTypeEnumMap[instance.workoutType]!,
      'durationMinutes': instance.durationMinutes,
      'intensity': instance.intensity,
      'distance': instance.distance,
      'tags': instance.tags,
      'isFavorite': instance.isFavorite,
      'moodRating': instance.moodRating,
      'notes': instance.notes,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$WorkoutTypeEnumMap = {
  WorkoutType.running: 'running',
  WorkoutType.swimming: 'swimming',
  WorkoutType.cycling: 'cycling',
  WorkoutType.weightTraining: 'weightTraining',
  WorkoutType.walking: 'walking',
  WorkoutType.tennis: 'tennis',
  WorkoutType.gymnastics: 'gymnastics',
  WorkoutType.bouldering: 'bouldering',
};

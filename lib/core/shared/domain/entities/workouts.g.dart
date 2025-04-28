// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workouts.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkoutsAdapter extends TypeAdapter<_Workouts> {
  @override
  final int typeId = 4;

  @override
  _Workouts read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _Workouts(
      workouts: (fields[0] as List).cast<Workout>(),
    );
  }

  @override
  void write(BinaryWriter writer, _Workouts obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.workouts);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkoutsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Workouts _$WorkoutsFromJson(Map<String, dynamic> json) => _Workouts(
      workouts: (json['workouts'] as List<dynamic>)
          .map((e) => Workout.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WorkoutsToJson(_Workouts instance) => <String, dynamic>{
      'workouts': instance.workouts,
    };

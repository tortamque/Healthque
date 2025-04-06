// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<_User> {
  @override
  final int typeId = 0;

  @override
  _User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _User(
      email: fields[0] as String?,
      avatarUrl: fields[1] as String?,
      name: fields[2] as String?,
      surname: fields[3] as String?,
      age: fields[4] as int?,
      gender: fields[5] as Gender?,
      height: fields[6] as double?,
      weight: fields[7] as double?,
      waterConsumption: fields[8] as int?,
      caloriesBurnInOneDay: fields[9] as int?,
      desiredSteps: fields[10] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _User obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.email)
      ..writeByte(1)
      ..write(obj.avatarUrl)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.surname)
      ..writeByte(4)
      ..write(obj.age)
      ..writeByte(5)
      ..write(obj.gender)
      ..writeByte(6)
      ..write(obj.height)
      ..writeByte(7)
      ..write(obj.weight)
      ..writeByte(8)
      ..write(obj.waterConsumption)
      ..writeByte(9)
      ..write(obj.caloriesBurnInOneDay)
      ..writeByte(10)
      ..write(obj.desiredSteps);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      email: json['email'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      age: (json['age'] as num?)?.toInt(),
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      height: (json['height'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      waterConsumption: (json['waterConsumption'] as num?)?.toInt(),
      caloriesBurnInOneDay: (json['caloriesBurnInOneDay'] as num?)?.toInt(),
      desiredSteps: (json['desiredSteps'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'email': instance.email,
      'avatarUrl': instance.avatarUrl,
      'name': instance.name,
      'surname': instance.surname,
      'age': instance.age,
      'gender': _$GenderEnumMap[instance.gender],
      'height': instance.height,
      'weight': instance.weight,
      'waterConsumption': instance.waterConsumption,
      'caloriesBurnInOneDay': instance.caloriesBurnInOneDay,
      'desiredSteps': instance.desiredSteps,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};

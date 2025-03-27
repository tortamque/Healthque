// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
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

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
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

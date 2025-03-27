// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {
  String? get email;
  String? get avatarUrl;
  String? get name;
  String? get surname;
  int? get age;
  Gender? get gender;
  double? get height;
  double? get weight;
  int? get waterConsumption;
  int? get caloriesBurnInOneDay;
  int? get desiredSteps;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.waterConsumption, waterConsumption) ||
                other.waterConsumption == waterConsumption) &&
            (identical(other.caloriesBurnInOneDay, caloriesBurnInOneDay) ||
                other.caloriesBurnInOneDay == caloriesBurnInOneDay) &&
            (identical(other.desiredSteps, desiredSteps) ||
                other.desiredSteps == desiredSteps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      avatarUrl,
      name,
      surname,
      age,
      gender,
      height,
      weight,
      waterConsumption,
      caloriesBurnInOneDay,
      desiredSteps);

  @override
  String toString() {
    return 'User(email: $email, avatarUrl: $avatarUrl, name: $name, surname: $surname, age: $age, gender: $gender, height: $height, weight: $weight, waterConsumption: $waterConsumption, caloriesBurnInOneDay: $caloriesBurnInOneDay, desiredSteps: $desiredSteps)';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
  @useResult
  $Res call(
      {String? email,
      String? avatarUrl,
      String? name,
      String? surname,
      int? age,
      Gender? gender,
      double? height,
      double? weight,
      int? waterConsumption,
      int? caloriesBurnInOneDay,
      int? desiredSteps});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? avatarUrl = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? waterConsumption = freezed,
    Object? caloriesBurnInOneDay = freezed,
    Object? desiredSteps = freezed,
  }) {
    return _then(User(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _self.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _self.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      waterConsumption: freezed == waterConsumption
          ? _self.waterConsumption
          : waterConsumption // ignore: cast_nullable_to_non_nullable
              as int?,
      caloriesBurnInOneDay: freezed == caloriesBurnInOneDay
          ? _self.caloriesBurnInOneDay
          : caloriesBurnInOneDay // ignore: cast_nullable_to_non_nullable
              as int?,
      desiredSteps: freezed == desiredSteps
          ? _self.desiredSteps
          : desiredSteps // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on

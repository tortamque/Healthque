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
  @HiveField(1)
  String? get avatarUrl;
  @HiveField(4)
  int? get age;
  @HiveField(5)
  Gender? get gender;
  @HiveField(6)
  double? get height;
  @HiveField(7)
  double? get weight;
  @HiveField(8)
  int? get waterConsumption;
  @HiveField(9)
  int? get caloriesBurnInOneDay;
  @HiveField(10)
  int? get desiredSteps;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
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
  int get hashCode => Object.hash(runtimeType, avatarUrl, age, gender, height,
      weight, waterConsumption, caloriesBurnInOneDay, desiredSteps);

  @override
  String toString() {
    return 'User(avatarUrl: $avatarUrl, age: $age, gender: $gender, height: $height, weight: $weight, waterConsumption: $waterConsumption, caloriesBurnInOneDay: $caloriesBurnInOneDay, desiredSteps: $desiredSteps)';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(1) String? avatarUrl,
      @HiveField(4) int? age,
      @HiveField(5) Gender? gender,
      @HiveField(6) double? height,
      @HiveField(7) double? weight,
      @HiveField(8) int? waterConsumption,
      @HiveField(9) int? caloriesBurnInOneDay,
      @HiveField(10) int? desiredSteps});
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
    Object? avatarUrl = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? waterConsumption = freezed,
    Object? caloriesBurnInOneDay = freezed,
    Object? desiredSteps = freezed,
  }) {
    return _then(_self.copyWith(
      avatarUrl: freezed == avatarUrl
          ? _self.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
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

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'UserAdapter')
class _User implements User {
  const _User(
      {@HiveField(1) this.avatarUrl,
      @HiveField(4) this.age,
      @HiveField(5) this.gender,
      @HiveField(6) this.height,
      @HiveField(7) this.weight,
      @HiveField(8) this.waterConsumption,
      @HiveField(9) this.caloriesBurnInOneDay,
      @HiveField(10) this.desiredSteps});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  @HiveField(1)
  final String? avatarUrl;
  @override
  @HiveField(4)
  final int? age;
  @override
  @HiveField(5)
  final Gender? gender;
  @override
  @HiveField(6)
  final double? height;
  @override
  @HiveField(7)
  final double? weight;
  @override
  @HiveField(8)
  final int? waterConsumption;
  @override
  @HiveField(9)
  final int? caloriesBurnInOneDay;
  @override
  @HiveField(10)
  final int? desiredSteps;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
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
  int get hashCode => Object.hash(runtimeType, avatarUrl, age, gender, height,
      weight, waterConsumption, caloriesBurnInOneDay, desiredSteps);

  @override
  String toString() {
    return 'User(avatarUrl: $avatarUrl, age: $age, gender: $gender, height: $height, weight: $weight, waterConsumption: $waterConsumption, caloriesBurnInOneDay: $caloriesBurnInOneDay, desiredSteps: $desiredSteps)';
  }
}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) =
      __$UserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(1) String? avatarUrl,
      @HiveField(4) int? age,
      @HiveField(5) Gender? gender,
      @HiveField(6) double? height,
      @HiveField(7) double? weight,
      @HiveField(8) int? waterConsumption,
      @HiveField(9) int? caloriesBurnInOneDay,
      @HiveField(10) int? desiredSteps});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? avatarUrl = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? waterConsumption = freezed,
    Object? caloriesBurnInOneDay = freezed,
    Object? desiredSteps = freezed,
  }) {
    return _then(_User(
      avatarUrl: freezed == avatarUrl
          ? _self.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
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

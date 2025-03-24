// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnboardingState {
  String? get email;
  String? get avatarUrl;
  String? get name;
  String? get surname;
  String? get googleDisplayName;
  int? get age;
  Gender? get gender;
  double? get height;
  double? get weight;
  int? get waterConsumption;
  int? get caloriesBurnInOneDay;
  int? get desiredSteps;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      _$OnboardingStateCopyWithImpl<OnboardingState>(
          this as OnboardingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnboardingState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.googleDisplayName, googleDisplayName) ||
                other.googleDisplayName == googleDisplayName) &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      avatarUrl,
      name,
      surname,
      googleDisplayName,
      age,
      gender,
      height,
      weight,
      waterConsumption,
      caloriesBurnInOneDay,
      desiredSteps);

  @override
  String toString() {
    return 'OnboardingState(email: $email, avatarUrl: $avatarUrl, name: $name, surname: $surname, googleDisplayName: $googleDisplayName, age: $age, gender: $gender, height: $height, weight: $weight, waterConsumption: $waterConsumption, caloriesBurnInOneDay: $caloriesBurnInOneDay, desiredSteps: $desiredSteps)';
  }
}

/// @nodoc
abstract mixin class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) _then) =
      _$OnboardingStateCopyWithImpl;
  @useResult
  $Res call(
      {String? email,
      String? avatarUrl,
      String? name,
      String? surname,
      String? googleDisplayName,
      int? age,
      Gender? gender,
      double? height,
      double? weight,
      int? waterConsumption,
      int? caloriesBurnInOneDay,
      int? desiredSteps});
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._self, this._then);

  final OnboardingState _self;
  final $Res Function(OnboardingState) _then;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? avatarUrl = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? googleDisplayName = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? waterConsumption = freezed,
    Object? caloriesBurnInOneDay = freezed,
    Object? desiredSteps = freezed,
  }) {
    return _then(_self.copyWith(
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
      googleDisplayName: freezed == googleDisplayName
          ? _self.googleDisplayName
          : googleDisplayName // ignore: cast_nullable_to_non_nullable
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

class OnboardingUserInfo extends OnboardingState {
  const OnboardingUserInfo(
      {this.email,
      this.avatarUrl,
      this.name,
      this.surname,
      this.googleDisplayName,
      this.age,
      this.gender,
      this.height,
      this.weight,
      this.waterConsumption,
      this.caloriesBurnInOneDay,
      this.desiredSteps})
      : super._();

  @override
  final String? email;
  @override
  final String? avatarUrl;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? googleDisplayName;
  @override
  final int? age;
  @override
  final Gender? gender;
  @override
  final double? height;
  @override
  final double? weight;
  @override
  final int? waterConsumption;
  @override
  final int? caloriesBurnInOneDay;
  @override
  final int? desiredSteps;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OnboardingUserInfoCopyWith<OnboardingUserInfo> get copyWith =>
      _$OnboardingUserInfoCopyWithImpl<OnboardingUserInfo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnboardingUserInfo &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.googleDisplayName, googleDisplayName) ||
                other.googleDisplayName == googleDisplayName) &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      avatarUrl,
      name,
      surname,
      googleDisplayName,
      age,
      gender,
      height,
      weight,
      waterConsumption,
      caloriesBurnInOneDay,
      desiredSteps);

  @override
  String toString() {
    return 'OnboardingState.userInfo(email: $email, avatarUrl: $avatarUrl, name: $name, surname: $surname, googleDisplayName: $googleDisplayName, age: $age, gender: $gender, height: $height, weight: $weight, waterConsumption: $waterConsumption, caloriesBurnInOneDay: $caloriesBurnInOneDay, desiredSteps: $desiredSteps)';
  }
}

/// @nodoc
abstract mixin class $OnboardingUserInfoCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory $OnboardingUserInfoCopyWith(
          OnboardingUserInfo value, $Res Function(OnboardingUserInfo) _then) =
      _$OnboardingUserInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? email,
      String? avatarUrl,
      String? name,
      String? surname,
      String? googleDisplayName,
      int? age,
      Gender? gender,
      double? height,
      double? weight,
      int? waterConsumption,
      int? caloriesBurnInOneDay,
      int? desiredSteps});
}

/// @nodoc
class _$OnboardingUserInfoCopyWithImpl<$Res>
    implements $OnboardingUserInfoCopyWith<$Res> {
  _$OnboardingUserInfoCopyWithImpl(this._self, this._then);

  final OnboardingUserInfo _self;
  final $Res Function(OnboardingUserInfo) _then;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = freezed,
    Object? avatarUrl = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? googleDisplayName = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? waterConsumption = freezed,
    Object? caloriesBurnInOneDay = freezed,
    Object? desiredSteps = freezed,
  }) {
    return _then(OnboardingUserInfo(
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
      googleDisplayName: freezed == googleDisplayName
          ? _self.googleDisplayName
          : googleDisplayName // ignore: cast_nullable_to_non_nullable
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

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HealthState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HealthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HealthState()';
  }
}

/// @nodoc
class $HealthStateCopyWith<$Res> {
  $HealthStateCopyWith(HealthState _, $Res Function(HealthState) __);
}

/// @nodoc

class HealthStateInitial extends HealthState {
  const HealthStateInitial() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HealthStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HealthState.initial()';
  }
}

/// @nodoc

class HealthStateLoading extends HealthState {
  const HealthStateLoading() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HealthStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HealthState.loading()';
  }
}

/// @nodoc

class HealthStateLoaded extends HealthState {
  const HealthStateLoaded(
      {required this.steps,
      required this.calories,
      required this.sleepDuration,
      required this.exerciseDuration,
      required this.exerciseDistance,
      required this.averageHeartRate,
      required this.averageBloodOxygen})
      : super._();

  final int steps;
  final double calories;
  final Duration sleepDuration;
  final Duration exerciseDuration;
  final double exerciseDistance;
  final double averageHeartRate;
  final double averageBloodOxygen;

  /// Create a copy of HealthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HealthStateLoadedCopyWith<HealthStateLoaded> get copyWith =>
      _$HealthStateLoadedCopyWithImpl<HealthStateLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HealthStateLoaded &&
            (identical(other.steps, steps) || other.steps == steps) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.sleepDuration, sleepDuration) ||
                other.sleepDuration == sleepDuration) &&
            (identical(other.exerciseDuration, exerciseDuration) ||
                other.exerciseDuration == exerciseDuration) &&
            (identical(other.exerciseDistance, exerciseDistance) ||
                other.exerciseDistance == exerciseDistance) &&
            (identical(other.averageHeartRate, averageHeartRate) ||
                other.averageHeartRate == averageHeartRate) &&
            (identical(other.averageBloodOxygen, averageBloodOxygen) ||
                other.averageBloodOxygen == averageBloodOxygen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, steps, calories, sleepDuration,
      exerciseDuration, exerciseDistance, averageHeartRate, averageBloodOxygen);

  @override
  String toString() {
    return 'HealthState.loaded(steps: $steps, calories: $calories, sleepDuration: $sleepDuration, exerciseDuration: $exerciseDuration, exerciseDistance: $exerciseDistance, averageHeartRate: $averageHeartRate, averageBloodOxygen: $averageBloodOxygen)';
  }
}

/// @nodoc
abstract mixin class $HealthStateLoadedCopyWith<$Res>
    implements $HealthStateCopyWith<$Res> {
  factory $HealthStateLoadedCopyWith(
          HealthStateLoaded value, $Res Function(HealthStateLoaded) _then) =
      _$HealthStateLoadedCopyWithImpl;
  @useResult
  $Res call(
      {int steps,
      double calories,
      Duration sleepDuration,
      Duration exerciseDuration,
      double exerciseDistance,
      double averageHeartRate,
      double averageBloodOxygen});
}

/// @nodoc
class _$HealthStateLoadedCopyWithImpl<$Res>
    implements $HealthStateLoadedCopyWith<$Res> {
  _$HealthStateLoadedCopyWithImpl(this._self, this._then);

  final HealthStateLoaded _self;
  final $Res Function(HealthStateLoaded) _then;

  /// Create a copy of HealthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? steps = null,
    Object? calories = null,
    Object? sleepDuration = null,
    Object? exerciseDuration = null,
    Object? exerciseDistance = null,
    Object? averageHeartRate = null,
    Object? averageBloodOxygen = null,
  }) {
    return _then(HealthStateLoaded(
      steps: null == steps
          ? _self.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int,
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      sleepDuration: null == sleepDuration
          ? _self.sleepDuration
          : sleepDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      exerciseDuration: null == exerciseDuration
          ? _self.exerciseDuration
          : exerciseDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      exerciseDistance: null == exerciseDistance
          ? _self.exerciseDistance
          : exerciseDistance // ignore: cast_nullable_to_non_nullable
              as double,
      averageHeartRate: null == averageHeartRate
          ? _self.averageHeartRate
          : averageHeartRate // ignore: cast_nullable_to_non_nullable
              as double,
      averageBloodOxygen: null == averageBloodOxygen
          ? _self.averageBloodOxygen
          : averageBloodOxygen // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class HealthStateError extends HealthState {
  const HealthStateError(this.message) : super._();

  final String message;

  /// Create a copy of HealthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HealthStateErrorCopyWith<HealthStateError> get copyWith =>
      _$HealthStateErrorCopyWithImpl<HealthStateError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HealthStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'HealthState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $HealthStateErrorCopyWith<$Res>
    implements $HealthStateCopyWith<$Res> {
  factory $HealthStateErrorCopyWith(
          HealthStateError value, $Res Function(HealthStateError) _then) =
      _$HealthStateErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$HealthStateErrorCopyWithImpl<$Res>
    implements $HealthStateErrorCopyWith<$Res> {
  _$HealthStateErrorCopyWithImpl(this._self, this._then);

  final HealthStateError _self;
  final $Res Function(HealthStateError) _then;

  /// Create a copy of HealthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(HealthStateError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

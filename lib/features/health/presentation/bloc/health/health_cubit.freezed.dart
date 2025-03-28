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
  const HealthStateLoading({this.previousData}) : super._();

  final HealthStateLoaded? previousData;

  /// Create a copy of HealthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HealthStateLoadingCopyWith<HealthStateLoading> get copyWith =>
      _$HealthStateLoadingCopyWithImpl<HealthStateLoading>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HealthStateLoading &&
            const DeepCollectionEquality()
                .equals(other.previousData, previousData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(previousData));

  @override
  String toString() {
    return 'HealthState.loading(previousData: $previousData)';
  }
}

/// @nodoc
abstract mixin class $HealthStateLoadingCopyWith<$Res>
    implements $HealthStateCopyWith<$Res> {
  factory $HealthStateLoadingCopyWith(
          HealthStateLoading value, $Res Function(HealthStateLoading) _then) =
      _$HealthStateLoadingCopyWithImpl;
  @useResult
  $Res call({HealthStateLoaded? previousData});
}

/// @nodoc
class _$HealthStateLoadingCopyWithImpl<$Res>
    implements $HealthStateLoadingCopyWith<$Res> {
  _$HealthStateLoadingCopyWithImpl(this._self, this._then);

  final HealthStateLoading _self;
  final $Res Function(HealthStateLoading) _then;

  /// Create a copy of HealthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? previousData = freezed,
  }) {
    return _then(HealthStateLoading(
      previousData: freezed == previousData
          ? _self.previousData
          : previousData // ignore: cast_nullable_to_non_nullable
              as HealthStateLoaded?,
    ));
  }
}

/// @nodoc

class HealthStateLoaded extends HealthState {
  const HealthStateLoaded(
      {required final List<HealthRecord> steps,
      required final List<HealthRecord> calories,
      required final List<HealthRecord> distance,
      required final List<HealthRecord> sleep,
      required final List<HealthRecord> workout,
      required final List<HealthRecord> heartRate,
      required final List<HealthRecord> bloodOxygen})
      : _steps = steps,
        _calories = calories,
        _distance = distance,
        _sleep = sleep,
        _workout = workout,
        _heartRate = heartRate,
        _bloodOxygen = bloodOxygen,
        super._();

  final List<HealthRecord> _steps;
  List<HealthRecord> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  final List<HealthRecord> _calories;
  List<HealthRecord> get calories {
    if (_calories is EqualUnmodifiableListView) return _calories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calories);
  }

  final List<HealthRecord> _distance;
  List<HealthRecord> get distance {
    if (_distance is EqualUnmodifiableListView) return _distance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_distance);
  }

  final List<HealthRecord> _sleep;
  List<HealthRecord> get sleep {
    if (_sleep is EqualUnmodifiableListView) return _sleep;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sleep);
  }

  final List<HealthRecord> _workout;
  List<HealthRecord> get workout {
    if (_workout is EqualUnmodifiableListView) return _workout;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workout);
  }

  final List<HealthRecord> _heartRate;
  List<HealthRecord> get heartRate {
    if (_heartRate is EqualUnmodifiableListView) return _heartRate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_heartRate);
  }

  final List<HealthRecord> _bloodOxygen;
  List<HealthRecord> get bloodOxygen {
    if (_bloodOxygen is EqualUnmodifiableListView) return _bloodOxygen;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bloodOxygen);
  }

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
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            const DeepCollectionEquality().equals(other._calories, _calories) &&
            const DeepCollectionEquality().equals(other._distance, _distance) &&
            const DeepCollectionEquality().equals(other._sleep, _sleep) &&
            const DeepCollectionEquality().equals(other._workout, _workout) &&
            const DeepCollectionEquality()
                .equals(other._heartRate, _heartRate) &&
            const DeepCollectionEquality()
                .equals(other._bloodOxygen, _bloodOxygen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_steps),
      const DeepCollectionEquality().hash(_calories),
      const DeepCollectionEquality().hash(_distance),
      const DeepCollectionEquality().hash(_sleep),
      const DeepCollectionEquality().hash(_workout),
      const DeepCollectionEquality().hash(_heartRate),
      const DeepCollectionEquality().hash(_bloodOxygen));

  @override
  String toString() {
    return 'HealthState.loaded(steps: $steps, calories: $calories, distance: $distance, sleep: $sleep, workout: $workout, heartRate: $heartRate, bloodOxygen: $bloodOxygen)';
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
      {List<HealthRecord> steps,
      List<HealthRecord> calories,
      List<HealthRecord> distance,
      List<HealthRecord> sleep,
      List<HealthRecord> workout,
      List<HealthRecord> heartRate,
      List<HealthRecord> bloodOxygen});
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
    Object? distance = null,
    Object? sleep = null,
    Object? workout = null,
    Object? heartRate = null,
    Object? bloodOxygen = null,
  }) {
    return _then(HealthStateLoaded(
      steps: null == steps
          ? _self._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<HealthRecord>,
      calories: null == calories
          ? _self._calories
          : calories // ignore: cast_nullable_to_non_nullable
              as List<HealthRecord>,
      distance: null == distance
          ? _self._distance
          : distance // ignore: cast_nullable_to_non_nullable
              as List<HealthRecord>,
      sleep: null == sleep
          ? _self._sleep
          : sleep // ignore: cast_nullable_to_non_nullable
              as List<HealthRecord>,
      workout: null == workout
          ? _self._workout
          : workout // ignore: cast_nullable_to_non_nullable
              as List<HealthRecord>,
      heartRate: null == heartRate
          ? _self._heartRate
          : heartRate // ignore: cast_nullable_to_non_nullable
              as List<HealthRecord>,
      bloodOxygen: null == bloodOxygen
          ? _self._bloodOxygen
          : bloodOxygen // ignore: cast_nullable_to_non_nullable
              as List<HealthRecord>,
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

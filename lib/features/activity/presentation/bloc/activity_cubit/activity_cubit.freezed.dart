// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActivityState {
  Workouts get workouts;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ActivityStateCopyWith<ActivityState> get copyWith =>
      _$ActivityStateCopyWithImpl<ActivityState>(
          this as ActivityState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActivityState &&
            (identical(other.workouts, workouts) ||
                other.workouts == workouts) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, workouts, isLoading, errorMessage);

  @override
  String toString() {
    return 'ActivityState(workouts: $workouts, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $ActivityStateCopyWith<$Res> {
  factory $ActivityStateCopyWith(
          ActivityState value, $Res Function(ActivityState) _then) =
      _$ActivityStateCopyWithImpl;
  @useResult
  $Res call({Workouts workouts, bool isLoading, String? errorMessage});

  $WorkoutsCopyWith<$Res> get workouts;
}

/// @nodoc
class _$ActivityStateCopyWithImpl<$Res>
    implements $ActivityStateCopyWith<$Res> {
  _$ActivityStateCopyWithImpl(this._self, this._then);

  final ActivityState _self;
  final $Res Function(ActivityState) _then;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workouts = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      workouts: null == workouts
          ? _self.workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as Workouts,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkoutsCopyWith<$Res> get workouts {
    return $WorkoutsCopyWith<$Res>(_self.workouts, (value) {
      return _then(_self.copyWith(workouts: value));
    });
  }
}

/// @nodoc

class _ActivityState implements ActivityState {
  const _ActivityState(
      {required this.workouts, this.isLoading = false, this.errorMessage});

  @override
  final Workouts workouts;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ActivityStateCopyWith<_ActivityState> get copyWith =>
      __$ActivityStateCopyWithImpl<_ActivityState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActivityState &&
            (identical(other.workouts, workouts) ||
                other.workouts == workouts) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, workouts, isLoading, errorMessage);

  @override
  String toString() {
    return 'ActivityState(workouts: $workouts, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$ActivityStateCopyWith<$Res>
    implements $ActivityStateCopyWith<$Res> {
  factory _$ActivityStateCopyWith(
          _ActivityState value, $Res Function(_ActivityState) _then) =
      __$ActivityStateCopyWithImpl;
  @override
  @useResult
  $Res call({Workouts workouts, bool isLoading, String? errorMessage});

  @override
  $WorkoutsCopyWith<$Res> get workouts;
}

/// @nodoc
class __$ActivityStateCopyWithImpl<$Res>
    implements _$ActivityStateCopyWith<$Res> {
  __$ActivityStateCopyWithImpl(this._self, this._then);

  final _ActivityState _self;
  final $Res Function(_ActivityState) _then;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? workouts = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_ActivityState(
      workouts: null == workouts
          ? _self.workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as Workouts,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkoutsCopyWith<$Res> get workouts {
    return $WorkoutsCopyWith<$Res>(_self.workouts, (value) {
      return _then(_self.copyWith(workouts: value));
    });
  }
}

// dart format on

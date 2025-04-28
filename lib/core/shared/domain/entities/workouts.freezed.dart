// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workouts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Workouts {
  @HiveField(0)
  List<Workout> get workouts;

  /// Create a copy of Workouts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkoutsCopyWith<Workouts> get copyWith =>
      _$WorkoutsCopyWithImpl<Workouts>(this as Workouts, _$identity);

  /// Serializes this Workouts to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Workouts &&
            const DeepCollectionEquality().equals(other.workouts, workouts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(workouts));

  @override
  String toString() {
    return 'Workouts(workouts: $workouts)';
  }
}

/// @nodoc
abstract mixin class $WorkoutsCopyWith<$Res> {
  factory $WorkoutsCopyWith(Workouts value, $Res Function(Workouts) _then) =
      _$WorkoutsCopyWithImpl;
  @useResult
  $Res call({@HiveField(0) List<Workout> workouts});
}

/// @nodoc
class _$WorkoutsCopyWithImpl<$Res> implements $WorkoutsCopyWith<$Res> {
  _$WorkoutsCopyWithImpl(this._self, this._then);

  final Workouts _self;
  final $Res Function(Workouts) _then;

  /// Create a copy of Workouts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workouts = null,
  }) {
    return _then(_self.copyWith(
      workouts: null == workouts
          ? _self.workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 4, adapterName: 'WorkoutsAdapter')
class _Workouts implements Workouts {
  const _Workouts({@HiveField(0) required final List<Workout> workouts})
      : _workouts = workouts;
  factory _Workouts.fromJson(Map<String, dynamic> json) =>
      _$WorkoutsFromJson(json);

  final List<Workout> _workouts;
  @override
  @HiveField(0)
  List<Workout> get workouts {
    if (_workouts is EqualUnmodifiableListView) return _workouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workouts);
  }

  /// Create a copy of Workouts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkoutsCopyWith<_Workouts> get copyWith =>
      __$WorkoutsCopyWithImpl<_Workouts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WorkoutsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Workouts &&
            const DeepCollectionEquality().equals(other._workouts, _workouts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_workouts));

  @override
  String toString() {
    return 'Workouts(workouts: $workouts)';
  }
}

/// @nodoc
abstract mixin class _$WorkoutsCopyWith<$Res>
    implements $WorkoutsCopyWith<$Res> {
  factory _$WorkoutsCopyWith(_Workouts value, $Res Function(_Workouts) _then) =
      __$WorkoutsCopyWithImpl;
  @override
  @useResult
  $Res call({@HiveField(0) List<Workout> workouts});
}

/// @nodoc
class __$WorkoutsCopyWithImpl<$Res> implements _$WorkoutsCopyWith<$Res> {
  __$WorkoutsCopyWithImpl(this._self, this._then);

  final _Workouts _self;
  final $Res Function(_Workouts) _then;

  /// Create a copy of Workouts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? workouts = null,
  }) {
    return _then(_Workouts(
      workouts: null == workouts
          ? _self._workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
    ));
  }
}

// dart format on

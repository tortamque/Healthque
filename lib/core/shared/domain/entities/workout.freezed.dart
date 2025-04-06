// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Workout {
  @HiveField(0)
  WorkoutType get workoutType;
  @HiveField(1)
  int get durationMinutes;
  @HiveField(2)
  int get intensity;
  @HiveField(3)
  double? get distance;
  @HiveField(4)
  List<String>? get tags;
  @HiveField(5)
  bool get isFavorite;
  @HiveField(6)
  int get moodRating;
  @HiveField(7)
  String get notes;
  @HiveField(8)
  DateTime get createdAt;

  /// Create a copy of Workout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkoutCopyWith<Workout> get copyWith =>
      _$WorkoutCopyWithImpl<Workout>(this as Workout, _$identity);

  /// Serializes this Workout to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Workout &&
            (identical(other.workoutType, workoutType) ||
                other.workoutType == workoutType) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.intensity, intensity) ||
                other.intensity == intensity) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.moodRating, moodRating) ||
                other.moodRating == moodRating) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      workoutType,
      durationMinutes,
      intensity,
      distance,
      const DeepCollectionEquality().hash(tags),
      isFavorite,
      moodRating,
      notes,
      createdAt);

  @override
  String toString() {
    return 'Workout(workoutType: $workoutType, durationMinutes: $durationMinutes, intensity: $intensity, distance: $distance, tags: $tags, isFavorite: $isFavorite, moodRating: $moodRating, notes: $notes, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $WorkoutCopyWith<$Res> {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) _then) =
      _$WorkoutCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) WorkoutType workoutType,
      @HiveField(1) int durationMinutes,
      @HiveField(2) int intensity,
      @HiveField(3) double? distance,
      @HiveField(4) List<String>? tags,
      @HiveField(5) bool isFavorite,
      @HiveField(6) int moodRating,
      @HiveField(7) String notes,
      @HiveField(8) DateTime createdAt});
}

/// @nodoc
class _$WorkoutCopyWithImpl<$Res> implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._self, this._then);

  final Workout _self;
  final $Res Function(Workout) _then;

  /// Create a copy of Workout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutType = null,
    Object? durationMinutes = null,
    Object? intensity = null,
    Object? distance = freezed,
    Object? tags = freezed,
    Object? isFavorite = null,
    Object? moodRating = null,
    Object? notes = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      workoutType: null == workoutType
          ? _self.workoutType
          : workoutType // ignore: cast_nullable_to_non_nullable
              as WorkoutType,
      durationMinutes: null == durationMinutes
          ? _self.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      intensity: null == intensity
          ? _self.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as int,
      distance: freezed == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      tags: freezed == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isFavorite: null == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      moodRating: null == moodRating
          ? _self.moodRating
          : moodRating // ignore: cast_nullable_to_non_nullable
              as int,
      notes: null == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2, adapterName: 'WorkoutAdapter')
class _Workout implements Workout {
  const _Workout(
      {@HiveField(0) required this.workoutType,
      @HiveField(1) required this.durationMinutes,
      @HiveField(2) required this.intensity,
      @HiveField(3) this.distance,
      @HiveField(4) final List<String>? tags,
      @HiveField(5) required this.isFavorite,
      @HiveField(6) required this.moodRating,
      @HiveField(7) required this.notes,
      @HiveField(8) required this.createdAt})
      : _tags = tags;
  factory _Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);

  @override
  @HiveField(0)
  final WorkoutType workoutType;
  @override
  @HiveField(1)
  final int durationMinutes;
  @override
  @HiveField(2)
  final int intensity;
  @override
  @HiveField(3)
  final double? distance;
  final List<String>? _tags;
  @override
  @HiveField(4)
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(5)
  final bool isFavorite;
  @override
  @HiveField(6)
  final int moodRating;
  @override
  @HiveField(7)
  final String notes;
  @override
  @HiveField(8)
  final DateTime createdAt;

  /// Create a copy of Workout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkoutCopyWith<_Workout> get copyWith =>
      __$WorkoutCopyWithImpl<_Workout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WorkoutToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Workout &&
            (identical(other.workoutType, workoutType) ||
                other.workoutType == workoutType) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.intensity, intensity) ||
                other.intensity == intensity) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.moodRating, moodRating) ||
                other.moodRating == moodRating) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      workoutType,
      durationMinutes,
      intensity,
      distance,
      const DeepCollectionEquality().hash(_tags),
      isFavorite,
      moodRating,
      notes,
      createdAt);

  @override
  String toString() {
    return 'Workout(workoutType: $workoutType, durationMinutes: $durationMinutes, intensity: $intensity, distance: $distance, tags: $tags, isFavorite: $isFavorite, moodRating: $moodRating, notes: $notes, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$WorkoutCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory _$WorkoutCopyWith(_Workout value, $Res Function(_Workout) _then) =
      __$WorkoutCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) WorkoutType workoutType,
      @HiveField(1) int durationMinutes,
      @HiveField(2) int intensity,
      @HiveField(3) double? distance,
      @HiveField(4) List<String>? tags,
      @HiveField(5) bool isFavorite,
      @HiveField(6) int moodRating,
      @HiveField(7) String notes,
      @HiveField(8) DateTime createdAt});
}

/// @nodoc
class __$WorkoutCopyWithImpl<$Res> implements _$WorkoutCopyWith<$Res> {
  __$WorkoutCopyWithImpl(this._self, this._then);

  final _Workout _self;
  final $Res Function(_Workout) _then;

  /// Create a copy of Workout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? workoutType = null,
    Object? durationMinutes = null,
    Object? intensity = null,
    Object? distance = freezed,
    Object? tags = freezed,
    Object? isFavorite = null,
    Object? moodRating = null,
    Object? notes = null,
    Object? createdAt = null,
  }) {
    return _then(_Workout(
      workoutType: null == workoutType
          ? _self.workoutType
          : workoutType // ignore: cast_nullable_to_non_nullable
              as WorkoutType,
      durationMinutes: null == durationMinutes
          ? _self.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      intensity: null == intensity
          ? _self.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as int,
      distance: freezed == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      tags: freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isFavorite: null == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      moodRating: null == moodRating
          ? _self.moodRating
          : moodRating // ignore: cast_nullable_to_non_nullable
              as int,
      notes: null == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on

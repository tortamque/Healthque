// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stress_mood_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StressMoodRecord {
  @HiveField(0)
  int get id;
  @HiveField(1)
  DateTime get measurementTime;
  @HiveField(2)
  int get stress;
  @HiveField(3)
  int get mood;

  /// Create a copy of StressMoodRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StressMoodRecordCopyWith<StressMoodRecord> get copyWith =>
      _$StressMoodRecordCopyWithImpl<StressMoodRecord>(
          this as StressMoodRecord, _$identity);

  /// Serializes this StressMoodRecord to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StressMoodRecord &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.measurementTime, measurementTime) ||
                other.measurementTime == measurementTime) &&
            (identical(other.stress, stress) || other.stress == stress) &&
            (identical(other.mood, mood) || other.mood == mood));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, measurementTime, stress, mood);

  @override
  String toString() {
    return 'StressMoodRecord(id: $id, measurementTime: $measurementTime, stress: $stress, mood: $mood)';
  }
}

/// @nodoc
abstract mixin class $StressMoodRecordCopyWith<$Res> {
  factory $StressMoodRecordCopyWith(
          StressMoodRecord value, $Res Function(StressMoodRecord) _then) =
      _$StressMoodRecordCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) DateTime measurementTime,
      @HiveField(2) int stress,
      @HiveField(3) int mood});
}

/// @nodoc
class _$StressMoodRecordCopyWithImpl<$Res>
    implements $StressMoodRecordCopyWith<$Res> {
  _$StressMoodRecordCopyWithImpl(this._self, this._then);

  final StressMoodRecord _self;
  final $Res Function(StressMoodRecord) _then;

  /// Create a copy of StressMoodRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? measurementTime = null,
    Object? stress = null,
    Object? mood = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      measurementTime: null == measurementTime
          ? _self.measurementTime
          : measurementTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stress: null == stress
          ? _self.stress
          : stress // ignore: cast_nullable_to_non_nullable
              as int,
      mood: null == mood
          ? _self.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StressMoodRecord implements StressMoodRecord {
  const _StressMoodRecord(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.measurementTime,
      @HiveField(2) required this.stress,
      @HiveField(3) required this.mood});
  factory _StressMoodRecord.fromJson(Map<String, dynamic> json) =>
      _$StressMoodRecordFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final DateTime measurementTime;
  @override
  @HiveField(2)
  final int stress;
  @override
  @HiveField(3)
  final int mood;

  /// Create a copy of StressMoodRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StressMoodRecordCopyWith<_StressMoodRecord> get copyWith =>
      __$StressMoodRecordCopyWithImpl<_StressMoodRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StressMoodRecordToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StressMoodRecord &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.measurementTime, measurementTime) ||
                other.measurementTime == measurementTime) &&
            (identical(other.stress, stress) || other.stress == stress) &&
            (identical(other.mood, mood) || other.mood == mood));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, measurementTime, stress, mood);

  @override
  String toString() {
    return 'StressMoodRecord(id: $id, measurementTime: $measurementTime, stress: $stress, mood: $mood)';
  }
}

/// @nodoc
abstract mixin class _$StressMoodRecordCopyWith<$Res>
    implements $StressMoodRecordCopyWith<$Res> {
  factory _$StressMoodRecordCopyWith(
          _StressMoodRecord value, $Res Function(_StressMoodRecord) _then) =
      __$StressMoodRecordCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) DateTime measurementTime,
      @HiveField(2) int stress,
      @HiveField(3) int mood});
}

/// @nodoc
class __$StressMoodRecordCopyWithImpl<$Res>
    implements _$StressMoodRecordCopyWith<$Res> {
  __$StressMoodRecordCopyWithImpl(this._self, this._then);

  final _StressMoodRecord _self;
  final $Res Function(_StressMoodRecord) _then;

  /// Create a copy of StressMoodRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? measurementTime = null,
    Object? stress = null,
    Object? mood = null,
  }) {
    return _then(_StressMoodRecord(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      measurementTime: null == measurementTime
          ? _self.measurementTime
          : measurementTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stress: null == stress
          ? _self.stress
          : stress // ignore: cast_nullable_to_non_nullable
              as int,
      mood: null == mood
          ? _self.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

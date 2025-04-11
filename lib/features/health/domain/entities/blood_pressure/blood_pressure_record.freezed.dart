// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blood_pressure_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BloodPressureRecord {
  @HiveField(0)
  int get id;
  @HiveField(1)
  DateTime get measurementTime;
  @HiveField(2)
  int get systolic;
  @HiveField(3)
  int get diastolic;

  /// Create a copy of BloodPressureRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BloodPressureRecordCopyWith<BloodPressureRecord> get copyWith =>
      _$BloodPressureRecordCopyWithImpl<BloodPressureRecord>(
          this as BloodPressureRecord, _$identity);

  /// Serializes this BloodPressureRecord to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BloodPressureRecord &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.measurementTime, measurementTime) ||
                other.measurementTime == measurementTime) &&
            (identical(other.systolic, systolic) ||
                other.systolic == systolic) &&
            (identical(other.diastolic, diastolic) ||
                other.diastolic == diastolic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, measurementTime, systolic, diastolic);

  @override
  String toString() {
    return 'BloodPressureRecord(id: $id, measurementTime: $measurementTime, systolic: $systolic, diastolic: $diastolic)';
  }
}

/// @nodoc
abstract mixin class $BloodPressureRecordCopyWith<$Res> {
  factory $BloodPressureRecordCopyWith(
          BloodPressureRecord value, $Res Function(BloodPressureRecord) _then) =
      _$BloodPressureRecordCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) DateTime measurementTime,
      @HiveField(2) int systolic,
      @HiveField(3) int diastolic});
}

/// @nodoc
class _$BloodPressureRecordCopyWithImpl<$Res>
    implements $BloodPressureRecordCopyWith<$Res> {
  _$BloodPressureRecordCopyWithImpl(this._self, this._then);

  final BloodPressureRecord _self;
  final $Res Function(BloodPressureRecord) _then;

  /// Create a copy of BloodPressureRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? measurementTime = null,
    Object? systolic = null,
    Object? diastolic = null,
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
      systolic: null == systolic
          ? _self.systolic
          : systolic // ignore: cast_nullable_to_non_nullable
              as int,
      diastolic: null == diastolic
          ? _self.diastolic
          : diastolic // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BloodPressureRecord implements BloodPressureRecord {
  const _BloodPressureRecord(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.measurementTime,
      @HiveField(2) required this.systolic,
      @HiveField(3) required this.diastolic});
  factory _BloodPressureRecord.fromJson(Map<String, dynamic> json) =>
      _$BloodPressureRecordFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final DateTime measurementTime;
  @override
  @HiveField(2)
  final int systolic;
  @override
  @HiveField(3)
  final int diastolic;

  /// Create a copy of BloodPressureRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BloodPressureRecordCopyWith<_BloodPressureRecord> get copyWith =>
      __$BloodPressureRecordCopyWithImpl<_BloodPressureRecord>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BloodPressureRecordToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BloodPressureRecord &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.measurementTime, measurementTime) ||
                other.measurementTime == measurementTime) &&
            (identical(other.systolic, systolic) ||
                other.systolic == systolic) &&
            (identical(other.diastolic, diastolic) ||
                other.diastolic == diastolic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, measurementTime, systolic, diastolic);

  @override
  String toString() {
    return 'BloodPressureRecord(id: $id, measurementTime: $measurementTime, systolic: $systolic, diastolic: $diastolic)';
  }
}

/// @nodoc
abstract mixin class _$BloodPressureRecordCopyWith<$Res>
    implements $BloodPressureRecordCopyWith<$Res> {
  factory _$BloodPressureRecordCopyWith(_BloodPressureRecord value,
          $Res Function(_BloodPressureRecord) _then) =
      __$BloodPressureRecordCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) DateTime measurementTime,
      @HiveField(2) int systolic,
      @HiveField(3) int diastolic});
}

/// @nodoc
class __$BloodPressureRecordCopyWithImpl<$Res>
    implements _$BloodPressureRecordCopyWith<$Res> {
  __$BloodPressureRecordCopyWithImpl(this._self, this._then);

  final _BloodPressureRecord _self;
  final $Res Function(_BloodPressureRecord) _then;

  /// Create a copy of BloodPressureRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? measurementTime = null,
    Object? systolic = null,
    Object? diastolic = null,
  }) {
    return _then(_BloodPressureRecord(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      measurementTime: null == measurementTime
          ? _self.measurementTime
          : measurementTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      systolic: null == systolic
          ? _self.systolic
          : systolic // ignore: cast_nullable_to_non_nullable
              as int,
      diastolic: null == diastolic
          ? _self.diastolic
          : diastolic // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

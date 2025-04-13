// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blood_sugar_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BloodSugarRecord {
  @HiveField(0)
  int get id;
  @HiveField(1)
  DateTime get measurementTime;
  @HiveField(2)
  double get glucose;

  /// Create a copy of BloodSugarRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BloodSugarRecordCopyWith<BloodSugarRecord> get copyWith =>
      _$BloodSugarRecordCopyWithImpl<BloodSugarRecord>(
          this as BloodSugarRecord, _$identity);

  /// Serializes this BloodSugarRecord to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BloodSugarRecord &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.measurementTime, measurementTime) ||
                other.measurementTime == measurementTime) &&
            (identical(other.glucose, glucose) || other.glucose == glucose));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, measurementTime, glucose);

  @override
  String toString() {
    return 'BloodSugarRecord(id: $id, measurementTime: $measurementTime, glucose: $glucose)';
  }
}

/// @nodoc
abstract mixin class $BloodSugarRecordCopyWith<$Res> {
  factory $BloodSugarRecordCopyWith(
          BloodSugarRecord value, $Res Function(BloodSugarRecord) _then) =
      _$BloodSugarRecordCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) DateTime measurementTime,
      @HiveField(2) double glucose});
}

/// @nodoc
class _$BloodSugarRecordCopyWithImpl<$Res>
    implements $BloodSugarRecordCopyWith<$Res> {
  _$BloodSugarRecordCopyWithImpl(this._self, this._then);

  final BloodSugarRecord _self;
  final $Res Function(BloodSugarRecord) _then;

  /// Create a copy of BloodSugarRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? measurementTime = null,
    Object? glucose = null,
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
      glucose: null == glucose
          ? _self.glucose
          : glucose // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BloodSugarRecord implements BloodSugarRecord {
  const _BloodSugarRecord(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.measurementTime,
      @HiveField(2) required this.glucose});
  factory _BloodSugarRecord.fromJson(Map<String, dynamic> json) =>
      _$BloodSugarRecordFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final DateTime measurementTime;
  @override
  @HiveField(2)
  final double glucose;

  /// Create a copy of BloodSugarRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BloodSugarRecordCopyWith<_BloodSugarRecord> get copyWith =>
      __$BloodSugarRecordCopyWithImpl<_BloodSugarRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BloodSugarRecordToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BloodSugarRecord &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.measurementTime, measurementTime) ||
                other.measurementTime == measurementTime) &&
            (identical(other.glucose, glucose) || other.glucose == glucose));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, measurementTime, glucose);

  @override
  String toString() {
    return 'BloodSugarRecord(id: $id, measurementTime: $measurementTime, glucose: $glucose)';
  }
}

/// @nodoc
abstract mixin class _$BloodSugarRecordCopyWith<$Res>
    implements $BloodSugarRecordCopyWith<$Res> {
  factory _$BloodSugarRecordCopyWith(
          _BloodSugarRecord value, $Res Function(_BloodSugarRecord) _then) =
      __$BloodSugarRecordCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) DateTime measurementTime,
      @HiveField(2) double glucose});
}

/// @nodoc
class __$BloodSugarRecordCopyWithImpl<$Res>
    implements _$BloodSugarRecordCopyWith<$Res> {
  __$BloodSugarRecordCopyWithImpl(this._self, this._then);

  final _BloodSugarRecord _self;
  final $Res Function(_BloodSugarRecord) _then;

  /// Create a copy of BloodSugarRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? measurementTime = null,
    Object? glucose = null,
  }) {
    return _then(_BloodSugarRecord(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      measurementTime: null == measurementTime
          ? _self.measurementTime
          : measurementTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      glucose: null == glucose
          ? _self.glucose
          : glucose // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on

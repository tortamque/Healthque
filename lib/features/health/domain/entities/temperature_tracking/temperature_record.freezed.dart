// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temperature_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TemperatureRecord {
  @HiveField(0)
  int get id;
  @HiveField(1)
  DateTime get measurementTime;
  @HiveField(2)
  double get temperature;

  /// Create a copy of TemperatureRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TemperatureRecordCopyWith<TemperatureRecord> get copyWith =>
      _$TemperatureRecordCopyWithImpl<TemperatureRecord>(
          this as TemperatureRecord, _$identity);

  /// Serializes this TemperatureRecord to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TemperatureRecord &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.measurementTime, measurementTime) ||
                other.measurementTime == measurementTime) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, measurementTime, temperature);

  @override
  String toString() {
    return 'TemperatureRecord(id: $id, measurementTime: $measurementTime, temperature: $temperature)';
  }
}

/// @nodoc
abstract mixin class $TemperatureRecordCopyWith<$Res> {
  factory $TemperatureRecordCopyWith(
          TemperatureRecord value, $Res Function(TemperatureRecord) _then) =
      _$TemperatureRecordCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) DateTime measurementTime,
      @HiveField(2) double temperature});
}

/// @nodoc
class _$TemperatureRecordCopyWithImpl<$Res>
    implements $TemperatureRecordCopyWith<$Res> {
  _$TemperatureRecordCopyWithImpl(this._self, this._then);

  final TemperatureRecord _self;
  final $Res Function(TemperatureRecord) _then;

  /// Create a copy of TemperatureRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? measurementTime = null,
    Object? temperature = null,
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
      temperature: null == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TemperatureRecord implements TemperatureRecord {
  const _TemperatureRecord(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.measurementTime,
      @HiveField(2) required this.temperature});
  factory _TemperatureRecord.fromJson(Map<String, dynamic> json) =>
      _$TemperatureRecordFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final DateTime measurementTime;
  @override
  @HiveField(2)
  final double temperature;

  /// Create a copy of TemperatureRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TemperatureRecordCopyWith<_TemperatureRecord> get copyWith =>
      __$TemperatureRecordCopyWithImpl<_TemperatureRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TemperatureRecordToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TemperatureRecord &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.measurementTime, measurementTime) ||
                other.measurementTime == measurementTime) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, measurementTime, temperature);

  @override
  String toString() {
    return 'TemperatureRecord(id: $id, measurementTime: $measurementTime, temperature: $temperature)';
  }
}

/// @nodoc
abstract mixin class _$TemperatureRecordCopyWith<$Res>
    implements $TemperatureRecordCopyWith<$Res> {
  factory _$TemperatureRecordCopyWith(
          _TemperatureRecord value, $Res Function(_TemperatureRecord) _then) =
      __$TemperatureRecordCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) DateTime measurementTime,
      @HiveField(2) double temperature});
}

/// @nodoc
class __$TemperatureRecordCopyWithImpl<$Res>
    implements _$TemperatureRecordCopyWith<$Res> {
  __$TemperatureRecordCopyWithImpl(this._self, this._then);

  final _TemperatureRecord _self;
  final $Res Function(_TemperatureRecord) _then;

  /// Create a copy of TemperatureRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? measurementTime = null,
    Object? temperature = null,
  }) {
    return _then(_TemperatureRecord(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      measurementTime: null == measurementTime
          ? _self.measurementTime
          : measurementTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on

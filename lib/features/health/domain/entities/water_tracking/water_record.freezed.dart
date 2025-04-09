// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'water_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WaterRecord {
  @HiveField(0)
  int get id;
  @HiveField(1)
  DateTime get datetime;
  @HiveField(2)
  double get amount;

  /// Create a copy of WaterRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WaterRecordCopyWith<WaterRecord> get copyWith =>
      _$WaterRecordCopyWithImpl<WaterRecord>(this as WaterRecord, _$identity);

  /// Serializes this WaterRecord to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WaterRecord &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, datetime, amount);

  @override
  String toString() {
    return 'WaterRecord(id: $id, datetime: $datetime, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class $WaterRecordCopyWith<$Res> {
  factory $WaterRecordCopyWith(
          WaterRecord value, $Res Function(WaterRecord) _then) =
      _$WaterRecordCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) DateTime datetime,
      @HiveField(2) double amount});
}

/// @nodoc
class _$WaterRecordCopyWithImpl<$Res> implements $WaterRecordCopyWith<$Res> {
  _$WaterRecordCopyWithImpl(this._self, this._then);

  final WaterRecord _self;
  final $Res Function(WaterRecord) _then;

  /// Create a copy of WaterRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? datetime = null,
    Object? amount = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      datetime: null == datetime
          ? _self.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WaterRecord implements WaterRecord {
  const _WaterRecord(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.datetime,
      @HiveField(2) required this.amount});
  factory _WaterRecord.fromJson(Map<String, dynamic> json) =>
      _$WaterRecordFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final DateTime datetime;
  @override
  @HiveField(2)
  final double amount;

  /// Create a copy of WaterRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WaterRecordCopyWith<_WaterRecord> get copyWith =>
      __$WaterRecordCopyWithImpl<_WaterRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WaterRecordToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WaterRecord &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, datetime, amount);

  @override
  String toString() {
    return 'WaterRecord(id: $id, datetime: $datetime, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class _$WaterRecordCopyWith<$Res>
    implements $WaterRecordCopyWith<$Res> {
  factory _$WaterRecordCopyWith(
          _WaterRecord value, $Res Function(_WaterRecord) _then) =
      __$WaterRecordCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) DateTime datetime,
      @HiveField(2) double amount});
}

/// @nodoc
class __$WaterRecordCopyWithImpl<$Res> implements _$WaterRecordCopyWith<$Res> {
  __$WaterRecordCopyWithImpl(this._self, this._then);

  final _WaterRecord _self;
  final $Res Function(_WaterRecord) _then;

  /// Create a copy of WaterRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? datetime = null,
    Object? amount = null,
  }) {
    return _then(_WaterRecord(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      datetime: null == datetime
          ? _self.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on

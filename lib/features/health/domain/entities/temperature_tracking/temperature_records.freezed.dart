// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temperature_records.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TemperatureRecords {
  @HiveField(0)
  List<TemperatureRecord> get records;

  /// Create a copy of TemperatureRecords
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TemperatureRecordsCopyWith<TemperatureRecords> get copyWith =>
      _$TemperatureRecordsCopyWithImpl<TemperatureRecords>(
          this as TemperatureRecords, _$identity);

  /// Serializes this TemperatureRecords to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TemperatureRecords &&
            const DeepCollectionEquality().equals(other.records, records));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(records));

  @override
  String toString() {
    return 'TemperatureRecords(records: $records)';
  }
}

/// @nodoc
abstract mixin class $TemperatureRecordsCopyWith<$Res> {
  factory $TemperatureRecordsCopyWith(
          TemperatureRecords value, $Res Function(TemperatureRecords) _then) =
      _$TemperatureRecordsCopyWithImpl;
  @useResult
  $Res call({@HiveField(0) List<TemperatureRecord> records});
}

/// @nodoc
class _$TemperatureRecordsCopyWithImpl<$Res>
    implements $TemperatureRecordsCopyWith<$Res> {
  _$TemperatureRecordsCopyWithImpl(this._self, this._then);

  final TemperatureRecords _self;
  final $Res Function(TemperatureRecords) _then;

  /// Create a copy of TemperatureRecords
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
  }) {
    return _then(_self.copyWith(
      records: null == records
          ? _self.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<TemperatureRecord>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TemperatureRecords implements TemperatureRecords {
  const _TemperatureRecords(
      {@HiveField(0) required final List<TemperatureRecord> records})
      : _records = records;
  factory _TemperatureRecords.fromJson(Map<String, dynamic> json) =>
      _$TemperatureRecordsFromJson(json);

  final List<TemperatureRecord> _records;
  @override
  @HiveField(0)
  List<TemperatureRecord> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  /// Create a copy of TemperatureRecords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TemperatureRecordsCopyWith<_TemperatureRecords> get copyWith =>
      __$TemperatureRecordsCopyWithImpl<_TemperatureRecords>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TemperatureRecordsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TemperatureRecords &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_records));

  @override
  String toString() {
    return 'TemperatureRecords(records: $records)';
  }
}

/// @nodoc
abstract mixin class _$TemperatureRecordsCopyWith<$Res>
    implements $TemperatureRecordsCopyWith<$Res> {
  factory _$TemperatureRecordsCopyWith(
          _TemperatureRecords value, $Res Function(_TemperatureRecords) _then) =
      __$TemperatureRecordsCopyWithImpl;
  @override
  @useResult
  $Res call({@HiveField(0) List<TemperatureRecord> records});
}

/// @nodoc
class __$TemperatureRecordsCopyWithImpl<$Res>
    implements _$TemperatureRecordsCopyWith<$Res> {
  __$TemperatureRecordsCopyWithImpl(this._self, this._then);

  final _TemperatureRecords _self;
  final $Res Function(_TemperatureRecords) _then;

  /// Create a copy of TemperatureRecords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? records = null,
  }) {
    return _then(_TemperatureRecords(
      records: null == records
          ? _self._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<TemperatureRecord>,
    ));
  }
}

// dart format on

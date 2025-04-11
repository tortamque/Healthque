// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blood_pressure_records.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BloodPressureRecords {
  @HiveField(0)
  List<BloodPressureRecord> get records;

  /// Create a copy of BloodPressureRecords
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BloodPressureRecordsCopyWith<BloodPressureRecords> get copyWith =>
      _$BloodPressureRecordsCopyWithImpl<BloodPressureRecords>(
          this as BloodPressureRecords, _$identity);

  /// Serializes this BloodPressureRecords to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BloodPressureRecords &&
            const DeepCollectionEquality().equals(other.records, records));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(records));

  @override
  String toString() {
    return 'BloodPressureRecords(records: $records)';
  }
}

/// @nodoc
abstract mixin class $BloodPressureRecordsCopyWith<$Res> {
  factory $BloodPressureRecordsCopyWith(BloodPressureRecords value,
          $Res Function(BloodPressureRecords) _then) =
      _$BloodPressureRecordsCopyWithImpl;
  @useResult
  $Res call({@HiveField(0) List<BloodPressureRecord> records});
}

/// @nodoc
class _$BloodPressureRecordsCopyWithImpl<$Res>
    implements $BloodPressureRecordsCopyWith<$Res> {
  _$BloodPressureRecordsCopyWithImpl(this._self, this._then);

  final BloodPressureRecords _self;
  final $Res Function(BloodPressureRecords) _then;

  /// Create a copy of BloodPressureRecords
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
              as List<BloodPressureRecord>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BloodPressureRecords implements BloodPressureRecords {
  const _BloodPressureRecords(
      {@HiveField(0) required final List<BloodPressureRecord> records})
      : _records = records;
  factory _BloodPressureRecords.fromJson(Map<String, dynamic> json) =>
      _$BloodPressureRecordsFromJson(json);

  final List<BloodPressureRecord> _records;
  @override
  @HiveField(0)
  List<BloodPressureRecord> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  /// Create a copy of BloodPressureRecords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BloodPressureRecordsCopyWith<_BloodPressureRecords> get copyWith =>
      __$BloodPressureRecordsCopyWithImpl<_BloodPressureRecords>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BloodPressureRecordsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BloodPressureRecords &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_records));

  @override
  String toString() {
    return 'BloodPressureRecords(records: $records)';
  }
}

/// @nodoc
abstract mixin class _$BloodPressureRecordsCopyWith<$Res>
    implements $BloodPressureRecordsCopyWith<$Res> {
  factory _$BloodPressureRecordsCopyWith(_BloodPressureRecords value,
          $Res Function(_BloodPressureRecords) _then) =
      __$BloodPressureRecordsCopyWithImpl;
  @override
  @useResult
  $Res call({@HiveField(0) List<BloodPressureRecord> records});
}

/// @nodoc
class __$BloodPressureRecordsCopyWithImpl<$Res>
    implements _$BloodPressureRecordsCopyWith<$Res> {
  __$BloodPressureRecordsCopyWithImpl(this._self, this._then);

  final _BloodPressureRecords _self;
  final $Res Function(_BloodPressureRecords) _then;

  /// Create a copy of BloodPressureRecords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? records = null,
  }) {
    return _then(_BloodPressureRecords(
      records: null == records
          ? _self._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<BloodPressureRecord>,
    ));
  }
}

// dart format on

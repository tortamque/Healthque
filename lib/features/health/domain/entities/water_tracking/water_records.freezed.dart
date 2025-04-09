// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'water_records.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WaterRecords {
  @HiveField(0)
  List<WaterRecord> get records;

  /// Create a copy of WaterRecords
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WaterRecordsCopyWith<WaterRecords> get copyWith =>
      _$WaterRecordsCopyWithImpl<WaterRecords>(
          this as WaterRecords, _$identity);

  /// Serializes this WaterRecords to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WaterRecords &&
            const DeepCollectionEquality().equals(other.records, records));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(records));

  @override
  String toString() {
    return 'WaterRecords(records: $records)';
  }
}

/// @nodoc
abstract mixin class $WaterRecordsCopyWith<$Res> {
  factory $WaterRecordsCopyWith(
          WaterRecords value, $Res Function(WaterRecords) _then) =
      _$WaterRecordsCopyWithImpl;
  @useResult
  $Res call({@HiveField(0) List<WaterRecord> records});
}

/// @nodoc
class _$WaterRecordsCopyWithImpl<$Res> implements $WaterRecordsCopyWith<$Res> {
  _$WaterRecordsCopyWithImpl(this._self, this._then);

  final WaterRecords _self;
  final $Res Function(WaterRecords) _then;

  /// Create a copy of WaterRecords
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
              as List<WaterRecord>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WaterRecords implements WaterRecords {
  const _WaterRecords({@HiveField(0) required final List<WaterRecord> records})
      : _records = records;
  factory _WaterRecords.fromJson(Map<String, dynamic> json) =>
      _$WaterRecordsFromJson(json);

  final List<WaterRecord> _records;
  @override
  @HiveField(0)
  List<WaterRecord> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  /// Create a copy of WaterRecords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WaterRecordsCopyWith<_WaterRecords> get copyWith =>
      __$WaterRecordsCopyWithImpl<_WaterRecords>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WaterRecordsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WaterRecords &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_records));

  @override
  String toString() {
    return 'WaterRecords(records: $records)';
  }
}

/// @nodoc
abstract mixin class _$WaterRecordsCopyWith<$Res>
    implements $WaterRecordsCopyWith<$Res> {
  factory _$WaterRecordsCopyWith(
          _WaterRecords value, $Res Function(_WaterRecords) _then) =
      __$WaterRecordsCopyWithImpl;
  @override
  @useResult
  $Res call({@HiveField(0) List<WaterRecord> records});
}

/// @nodoc
class __$WaterRecordsCopyWithImpl<$Res>
    implements _$WaterRecordsCopyWith<$Res> {
  __$WaterRecordsCopyWithImpl(this._self, this._then);

  final _WaterRecords _self;
  final $Res Function(_WaterRecords) _then;

  /// Create a copy of WaterRecords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? records = null,
  }) {
    return _then(_WaterRecords(
      records: null == records
          ? _self._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<WaterRecord>,
    ));
  }
}

// dart format on

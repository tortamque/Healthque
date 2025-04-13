// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blood_sugar_records.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BloodSugarRecords {
  @HiveField(0)
  List<BloodSugarRecord> get records;

  /// Create a copy of BloodSugarRecords
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BloodSugarRecordsCopyWith<BloodSugarRecords> get copyWith =>
      _$BloodSugarRecordsCopyWithImpl<BloodSugarRecords>(
          this as BloodSugarRecords, _$identity);

  /// Serializes this BloodSugarRecords to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BloodSugarRecords &&
            const DeepCollectionEquality().equals(other.records, records));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(records));

  @override
  String toString() {
    return 'BloodSugarRecords(records: $records)';
  }
}

/// @nodoc
abstract mixin class $BloodSugarRecordsCopyWith<$Res> {
  factory $BloodSugarRecordsCopyWith(
          BloodSugarRecords value, $Res Function(BloodSugarRecords) _then) =
      _$BloodSugarRecordsCopyWithImpl;
  @useResult
  $Res call({@HiveField(0) List<BloodSugarRecord> records});
}

/// @nodoc
class _$BloodSugarRecordsCopyWithImpl<$Res>
    implements $BloodSugarRecordsCopyWith<$Res> {
  _$BloodSugarRecordsCopyWithImpl(this._self, this._then);

  final BloodSugarRecords _self;
  final $Res Function(BloodSugarRecords) _then;

  /// Create a copy of BloodSugarRecords
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
              as List<BloodSugarRecord>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BloodSugarRecords implements BloodSugarRecords {
  const _BloodSugarRecords(
      {@HiveField(0) required final List<BloodSugarRecord> records})
      : _records = records;
  factory _BloodSugarRecords.fromJson(Map<String, dynamic> json) =>
      _$BloodSugarRecordsFromJson(json);

  final List<BloodSugarRecord> _records;
  @override
  @HiveField(0)
  List<BloodSugarRecord> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  /// Create a copy of BloodSugarRecords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BloodSugarRecordsCopyWith<_BloodSugarRecords> get copyWith =>
      __$BloodSugarRecordsCopyWithImpl<_BloodSugarRecords>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BloodSugarRecordsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BloodSugarRecords &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_records));

  @override
  String toString() {
    return 'BloodSugarRecords(records: $records)';
  }
}

/// @nodoc
abstract mixin class _$BloodSugarRecordsCopyWith<$Res>
    implements $BloodSugarRecordsCopyWith<$Res> {
  factory _$BloodSugarRecordsCopyWith(
          _BloodSugarRecords value, $Res Function(_BloodSugarRecords) _then) =
      __$BloodSugarRecordsCopyWithImpl;
  @override
  @useResult
  $Res call({@HiveField(0) List<BloodSugarRecord> records});
}

/// @nodoc
class __$BloodSugarRecordsCopyWithImpl<$Res>
    implements _$BloodSugarRecordsCopyWith<$Res> {
  __$BloodSugarRecordsCopyWithImpl(this._self, this._then);

  final _BloodSugarRecords _self;
  final $Res Function(_BloodSugarRecords) _then;

  /// Create a copy of BloodSugarRecords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? records = null,
  }) {
    return _then(_BloodSugarRecords(
      records: null == records
          ? _self._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<BloodSugarRecord>,
    ));
  }
}

// dart format on

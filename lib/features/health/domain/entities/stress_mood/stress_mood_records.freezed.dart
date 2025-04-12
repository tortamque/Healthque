// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stress_mood_records.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StressMoodRecords {
  @HiveField(0)
  List<StressMoodRecord> get records;

  /// Create a copy of StressMoodRecords
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StressMoodRecordsCopyWith<StressMoodRecords> get copyWith =>
      _$StressMoodRecordsCopyWithImpl<StressMoodRecords>(
          this as StressMoodRecords, _$identity);

  /// Serializes this StressMoodRecords to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StressMoodRecords &&
            const DeepCollectionEquality().equals(other.records, records));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(records));

  @override
  String toString() {
    return 'StressMoodRecords(records: $records)';
  }
}

/// @nodoc
abstract mixin class $StressMoodRecordsCopyWith<$Res> {
  factory $StressMoodRecordsCopyWith(
          StressMoodRecords value, $Res Function(StressMoodRecords) _then) =
      _$StressMoodRecordsCopyWithImpl;
  @useResult
  $Res call({@HiveField(0) List<StressMoodRecord> records});
}

/// @nodoc
class _$StressMoodRecordsCopyWithImpl<$Res>
    implements $StressMoodRecordsCopyWith<$Res> {
  _$StressMoodRecordsCopyWithImpl(this._self, this._then);

  final StressMoodRecords _self;
  final $Res Function(StressMoodRecords) _then;

  /// Create a copy of StressMoodRecords
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
              as List<StressMoodRecord>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StressMoodRecords implements StressMoodRecords {
  const _StressMoodRecords(
      {@HiveField(0) required final List<StressMoodRecord> records})
      : _records = records;
  factory _StressMoodRecords.fromJson(Map<String, dynamic> json) =>
      _$StressMoodRecordsFromJson(json);

  final List<StressMoodRecord> _records;
  @override
  @HiveField(0)
  List<StressMoodRecord> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  /// Create a copy of StressMoodRecords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StressMoodRecordsCopyWith<_StressMoodRecords> get copyWith =>
      __$StressMoodRecordsCopyWithImpl<_StressMoodRecords>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StressMoodRecordsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StressMoodRecords &&
            const DeepCollectionEquality().equals(other._records, _records));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_records));

  @override
  String toString() {
    return 'StressMoodRecords(records: $records)';
  }
}

/// @nodoc
abstract mixin class _$StressMoodRecordsCopyWith<$Res>
    implements $StressMoodRecordsCopyWith<$Res> {
  factory _$StressMoodRecordsCopyWith(
          _StressMoodRecords value, $Res Function(_StressMoodRecords) _then) =
      __$StressMoodRecordsCopyWithImpl;
  @override
  @useResult
  $Res call({@HiveField(0) List<StressMoodRecord> records});
}

/// @nodoc
class __$StressMoodRecordsCopyWithImpl<$Res>
    implements _$StressMoodRecordsCopyWith<$Res> {
  __$StressMoodRecordsCopyWithImpl(this._self, this._then);

  final _StressMoodRecords _self;
  final $Res Function(_StressMoodRecords) _then;

  /// Create a copy of StressMoodRecords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? records = null,
  }) {
    return _then(_StressMoodRecords(
      records: null == records
          ? _self._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<StressMoodRecord>,
    ));
  }
}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blood_pressure_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BloodPressureTrackingState {
  dynamic get isLoading;
  BloodPressureRecords get records;
  bool get isHighBloodPressure;
  String? get errorMessage;

  /// Create a copy of BloodPressureTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BloodPressureTrackingStateCopyWith<BloodPressureTrackingState>
      get copyWith =>
          _$BloodPressureTrackingStateCopyWithImpl<BloodPressureTrackingState>(
              this as BloodPressureTrackingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BloodPressureTrackingState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            (identical(other.records, records) || other.records == records) &&
            (identical(other.isHighBloodPressure, isHighBloodPressure) ||
                other.isHighBloodPressure == isHighBloodPressure) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      records,
      isHighBloodPressure,
      errorMessage);

  @override
  String toString() {
    return 'BloodPressureTrackingState(isLoading: $isLoading, records: $records, isHighBloodPressure: $isHighBloodPressure, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $BloodPressureTrackingStateCopyWith<$Res> {
  factory $BloodPressureTrackingStateCopyWith(BloodPressureTrackingState value,
          $Res Function(BloodPressureTrackingState) _then) =
      _$BloodPressureTrackingStateCopyWithImpl;
  @useResult
  $Res call(
      {dynamic isLoading,
      BloodPressureRecords records,
      bool isHighBloodPressure,
      String? errorMessage});

  $BloodPressureRecordsCopyWith<$Res> get records;
}

/// @nodoc
class _$BloodPressureTrackingStateCopyWithImpl<$Res>
    implements $BloodPressureTrackingStateCopyWith<$Res> {
  _$BloodPressureTrackingStateCopyWithImpl(this._self, this._then);

  final BloodPressureTrackingState _self;
  final $Res Function(BloodPressureTrackingState) _then;

  /// Create a copy of BloodPressureTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? records = null,
    Object? isHighBloodPressure = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: freezed == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      records: null == records
          ? _self.records
          : records // ignore: cast_nullable_to_non_nullable
              as BloodPressureRecords,
      isHighBloodPressure: null == isHighBloodPressure
          ? _self.isHighBloodPressure
          : isHighBloodPressure // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of BloodPressureTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BloodPressureRecordsCopyWith<$Res> get records {
    return $BloodPressureRecordsCopyWith<$Res>(_self.records, (value) {
      return _then(_self.copyWith(records: value));
    });
  }
}

/// @nodoc

class _BloodPressureTrackingState implements BloodPressureTrackingState {
  const _BloodPressureTrackingState(
      {this.isLoading = false,
      this.records = const BloodPressureRecords(records: []),
      this.isHighBloodPressure = false,
      this.errorMessage});

  @override
  @JsonKey()
  final dynamic isLoading;
  @override
  @JsonKey()
  final BloodPressureRecords records;
  @override
  @JsonKey()
  final bool isHighBloodPressure;
  @override
  final String? errorMessage;

  /// Create a copy of BloodPressureTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BloodPressureTrackingStateCopyWith<_BloodPressureTrackingState>
      get copyWith => __$BloodPressureTrackingStateCopyWithImpl<
          _BloodPressureTrackingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BloodPressureTrackingState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            (identical(other.records, records) || other.records == records) &&
            (identical(other.isHighBloodPressure, isHighBloodPressure) ||
                other.isHighBloodPressure == isHighBloodPressure) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      records,
      isHighBloodPressure,
      errorMessage);

  @override
  String toString() {
    return 'BloodPressureTrackingState(isLoading: $isLoading, records: $records, isHighBloodPressure: $isHighBloodPressure, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$BloodPressureTrackingStateCopyWith<$Res>
    implements $BloodPressureTrackingStateCopyWith<$Res> {
  factory _$BloodPressureTrackingStateCopyWith(
          _BloodPressureTrackingState value,
          $Res Function(_BloodPressureTrackingState) _then) =
      __$BloodPressureTrackingStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {dynamic isLoading,
      BloodPressureRecords records,
      bool isHighBloodPressure,
      String? errorMessage});

  @override
  $BloodPressureRecordsCopyWith<$Res> get records;
}

/// @nodoc
class __$BloodPressureTrackingStateCopyWithImpl<$Res>
    implements _$BloodPressureTrackingStateCopyWith<$Res> {
  __$BloodPressureTrackingStateCopyWithImpl(this._self, this._then);

  final _BloodPressureTrackingState _self;
  final $Res Function(_BloodPressureTrackingState) _then;

  /// Create a copy of BloodPressureTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = freezed,
    Object? records = null,
    Object? isHighBloodPressure = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_BloodPressureTrackingState(
      isLoading: freezed == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      records: null == records
          ? _self.records
          : records // ignore: cast_nullable_to_non_nullable
              as BloodPressureRecords,
      isHighBloodPressure: null == isHighBloodPressure
          ? _self.isHighBloodPressure
          : isHighBloodPressure // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of BloodPressureTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BloodPressureRecordsCopyWith<$Res> get records {
    return $BloodPressureRecordsCopyWith<$Res>(_self.records, (value) {
      return _then(_self.copyWith(records: value));
    });
  }
}

// dart format on

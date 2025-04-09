// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temperature_tracking_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TemperatureTrackingState {
  TemperatureRecords? get records;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of TemperatureTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TemperatureTrackingStateCopyWith<TemperatureTrackingState> get copyWith =>
      _$TemperatureTrackingStateCopyWithImpl<TemperatureTrackingState>(
          this as TemperatureTrackingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TemperatureTrackingState &&
            (identical(other.records, records) || other.records == records) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, records, isLoading, errorMessage);

  @override
  String toString() {
    return 'TemperatureTrackingState(records: $records, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $TemperatureTrackingStateCopyWith<$Res> {
  factory $TemperatureTrackingStateCopyWith(TemperatureTrackingState value,
          $Res Function(TemperatureTrackingState) _then) =
      _$TemperatureTrackingStateCopyWithImpl;
  @useResult
  $Res call(
      {TemperatureRecords? records, bool isLoading, String? errorMessage});

  $TemperatureRecordsCopyWith<$Res>? get records;
}

/// @nodoc
class _$TemperatureTrackingStateCopyWithImpl<$Res>
    implements $TemperatureTrackingStateCopyWith<$Res> {
  _$TemperatureTrackingStateCopyWithImpl(this._self, this._then);

  final TemperatureTrackingState _self;
  final $Res Function(TemperatureTrackingState) _then;

  /// Create a copy of TemperatureTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      records: freezed == records
          ? _self.records
          : records // ignore: cast_nullable_to_non_nullable
              as TemperatureRecords?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TemperatureTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemperatureRecordsCopyWith<$Res>? get records {
    if (_self.records == null) {
      return null;
    }

    return $TemperatureRecordsCopyWith<$Res>(_self.records!, (value) {
      return _then(_self.copyWith(records: value));
    });
  }
}

/// @nodoc

class _TemperatureTrackingState implements TemperatureTrackingState {
  const _TemperatureTrackingState(
      {this.records = const TemperatureRecords(records: []),
      this.isLoading = false,
      this.errorMessage});

  @override
  @JsonKey()
  final TemperatureRecords? records;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of TemperatureTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TemperatureTrackingStateCopyWith<_TemperatureTrackingState> get copyWith =>
      __$TemperatureTrackingStateCopyWithImpl<_TemperatureTrackingState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TemperatureTrackingState &&
            (identical(other.records, records) || other.records == records) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, records, isLoading, errorMessage);

  @override
  String toString() {
    return 'TemperatureTrackingState(records: $records, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$TemperatureTrackingStateCopyWith<$Res>
    implements $TemperatureTrackingStateCopyWith<$Res> {
  factory _$TemperatureTrackingStateCopyWith(_TemperatureTrackingState value,
          $Res Function(_TemperatureTrackingState) _then) =
      __$TemperatureTrackingStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {TemperatureRecords? records, bool isLoading, String? errorMessage});

  @override
  $TemperatureRecordsCopyWith<$Res>? get records;
}

/// @nodoc
class __$TemperatureTrackingStateCopyWithImpl<$Res>
    implements _$TemperatureTrackingStateCopyWith<$Res> {
  __$TemperatureTrackingStateCopyWithImpl(this._self, this._then);

  final _TemperatureTrackingState _self;
  final $Res Function(_TemperatureTrackingState) _then;

  /// Create a copy of TemperatureTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? records = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_TemperatureTrackingState(
      records: freezed == records
          ? _self.records
          : records // ignore: cast_nullable_to_non_nullable
              as TemperatureRecords?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TemperatureTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemperatureRecordsCopyWith<$Res>? get records {
    if (_self.records == null) {
      return null;
    }

    return $TemperatureRecordsCopyWith<$Res>(_self.records!, (value) {
      return _then(_self.copyWith(records: value));
    });
  }
}

// dart format on

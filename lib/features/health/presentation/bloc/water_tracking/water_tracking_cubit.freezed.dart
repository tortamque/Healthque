// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'water_tracking_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WaterTrackingState {
  WaterRecords get records;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of WaterTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WaterTrackingStateCopyWith<WaterTrackingState> get copyWith =>
      _$WaterTrackingStateCopyWithImpl<WaterTrackingState>(
          this as WaterTrackingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WaterTrackingState &&
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
    return 'WaterTrackingState(records: $records, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $WaterTrackingStateCopyWith<$Res> {
  factory $WaterTrackingStateCopyWith(
          WaterTrackingState value, $Res Function(WaterTrackingState) _then) =
      _$WaterTrackingStateCopyWithImpl;
  @useResult
  $Res call({WaterRecords records, bool isLoading, String? errorMessage});

  $WaterRecordsCopyWith<$Res> get records;
}

/// @nodoc
class _$WaterTrackingStateCopyWithImpl<$Res>
    implements $WaterTrackingStateCopyWith<$Res> {
  _$WaterTrackingStateCopyWithImpl(this._self, this._then);

  final WaterTrackingState _self;
  final $Res Function(WaterTrackingState) _then;

  /// Create a copy of WaterTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      records: null == records
          ? _self.records
          : records // ignore: cast_nullable_to_non_nullable
              as WaterRecords,
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

  /// Create a copy of WaterTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WaterRecordsCopyWith<$Res> get records {
    return $WaterRecordsCopyWith<$Res>(_self.records, (value) {
      return _then(_self.copyWith(records: value));
    });
  }
}

/// @nodoc

class _WaterTrackingState implements WaterTrackingState {
  const _WaterTrackingState(
      {required this.records, this.isLoading = false, this.errorMessage});

  @override
  final WaterRecords records;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of WaterTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WaterTrackingStateCopyWith<_WaterTrackingState> get copyWith =>
      __$WaterTrackingStateCopyWithImpl<_WaterTrackingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WaterTrackingState &&
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
    return 'WaterTrackingState(records: $records, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$WaterTrackingStateCopyWith<$Res>
    implements $WaterTrackingStateCopyWith<$Res> {
  factory _$WaterTrackingStateCopyWith(
          _WaterTrackingState value, $Res Function(_WaterTrackingState) _then) =
      __$WaterTrackingStateCopyWithImpl;
  @override
  @useResult
  $Res call({WaterRecords records, bool isLoading, String? errorMessage});

  @override
  $WaterRecordsCopyWith<$Res> get records;
}

/// @nodoc
class __$WaterTrackingStateCopyWithImpl<$Res>
    implements _$WaterTrackingStateCopyWith<$Res> {
  __$WaterTrackingStateCopyWithImpl(this._self, this._then);

  final _WaterTrackingState _self;
  final $Res Function(_WaterTrackingState) _then;

  /// Create a copy of WaterTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? records = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_WaterTrackingState(
      records: null == records
          ? _self.records
          : records // ignore: cast_nullable_to_non_nullable
              as WaterRecords,
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

  /// Create a copy of WaterTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WaterRecordsCopyWith<$Res> get records {
    return $WaterRecordsCopyWith<$Res>(_self.records, (value) {
      return _then(_self.copyWith(records: value));
    });
  }
}

// dart format on

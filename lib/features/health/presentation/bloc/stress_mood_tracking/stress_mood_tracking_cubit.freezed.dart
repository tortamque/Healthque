// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stress_mood_tracking_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StressMoodTrackingState {
  bool get isLoading;
  StressMoodRecords get records;
  String? get errorMessage;

  /// Create a copy of StressMoodTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StressMoodTrackingStateCopyWith<StressMoodTrackingState> get copyWith =>
      _$StressMoodTrackingStateCopyWithImpl<StressMoodTrackingState>(
          this as StressMoodTrackingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StressMoodTrackingState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.records, records) || other.records == records) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, records, errorMessage);

  @override
  String toString() {
    return 'StressMoodTrackingState(isLoading: $isLoading, records: $records, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $StressMoodTrackingStateCopyWith<$Res> {
  factory $StressMoodTrackingStateCopyWith(StressMoodTrackingState value,
          $Res Function(StressMoodTrackingState) _then) =
      _$StressMoodTrackingStateCopyWithImpl;
  @useResult
  $Res call({bool isLoading, StressMoodRecords records, String? errorMessage});

  $StressMoodRecordsCopyWith<$Res> get records;
}

/// @nodoc
class _$StressMoodTrackingStateCopyWithImpl<$Res>
    implements $StressMoodTrackingStateCopyWith<$Res> {
  _$StressMoodTrackingStateCopyWithImpl(this._self, this._then);

  final StressMoodTrackingState _self;
  final $Res Function(StressMoodTrackingState) _then;

  /// Create a copy of StressMoodTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? records = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      records: null == records
          ? _self.records
          : records // ignore: cast_nullable_to_non_nullable
              as StressMoodRecords,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of StressMoodTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StressMoodRecordsCopyWith<$Res> get records {
    return $StressMoodRecordsCopyWith<$Res>(_self.records, (value) {
      return _then(_self.copyWith(records: value));
    });
  }
}

/// @nodoc

class _StressMoodTrackingState implements StressMoodTrackingState {
  const _StressMoodTrackingState(
      {this.isLoading = false,
      this.records = const StressMoodRecords(records: []),
      this.errorMessage});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final StressMoodRecords records;
  @override
  final String? errorMessage;

  /// Create a copy of StressMoodTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StressMoodTrackingStateCopyWith<_StressMoodTrackingState> get copyWith =>
      __$StressMoodTrackingStateCopyWithImpl<_StressMoodTrackingState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StressMoodTrackingState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.records, records) || other.records == records) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, records, errorMessage);

  @override
  String toString() {
    return 'StressMoodTrackingState(isLoading: $isLoading, records: $records, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$StressMoodTrackingStateCopyWith<$Res>
    implements $StressMoodTrackingStateCopyWith<$Res> {
  factory _$StressMoodTrackingStateCopyWith(_StressMoodTrackingState value,
          $Res Function(_StressMoodTrackingState) _then) =
      __$StressMoodTrackingStateCopyWithImpl;
  @override
  @useResult
  $Res call({bool isLoading, StressMoodRecords records, String? errorMessage});

  @override
  $StressMoodRecordsCopyWith<$Res> get records;
}

/// @nodoc
class __$StressMoodTrackingStateCopyWithImpl<$Res>
    implements _$StressMoodTrackingStateCopyWith<$Res> {
  __$StressMoodTrackingStateCopyWithImpl(this._self, this._then);

  final _StressMoodTrackingState _self;
  final $Res Function(_StressMoodTrackingState) _then;

  /// Create a copy of StressMoodTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? records = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_StressMoodTrackingState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      records: null == records
          ? _self.records
          : records // ignore: cast_nullable_to_non_nullable
              as StressMoodRecords,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of StressMoodTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StressMoodRecordsCopyWith<$Res> get records {
    return $StressMoodRecordsCopyWith<$Res>(_self.records, (value) {
      return _then(_self.copyWith(records: value));
    });
  }
}

// dart format on

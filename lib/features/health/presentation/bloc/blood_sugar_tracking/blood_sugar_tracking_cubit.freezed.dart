// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blood_sugar_tracking_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BloodSugarTrackingState {
  BloodSugarRecords? get records;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of BloodSugarTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BloodSugarTrackingStateCopyWith<BloodSugarTrackingState> get copyWith =>
      _$BloodSugarTrackingStateCopyWithImpl<BloodSugarTrackingState>(
          this as BloodSugarTrackingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BloodSugarTrackingState &&
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
    return 'BloodSugarTrackingState(records: $records, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $BloodSugarTrackingStateCopyWith<$Res> {
  factory $BloodSugarTrackingStateCopyWith(BloodSugarTrackingState value,
          $Res Function(BloodSugarTrackingState) _then) =
      _$BloodSugarTrackingStateCopyWithImpl;
  @useResult
  $Res call({BloodSugarRecords? records, bool isLoading, String? errorMessage});

  $BloodSugarRecordsCopyWith<$Res>? get records;
}

/// @nodoc
class _$BloodSugarTrackingStateCopyWithImpl<$Res>
    implements $BloodSugarTrackingStateCopyWith<$Res> {
  _$BloodSugarTrackingStateCopyWithImpl(this._self, this._then);

  final BloodSugarTrackingState _self;
  final $Res Function(BloodSugarTrackingState) _then;

  /// Create a copy of BloodSugarTrackingState
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
              as BloodSugarRecords?,
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

  /// Create a copy of BloodSugarTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BloodSugarRecordsCopyWith<$Res>? get records {
    if (_self.records == null) {
      return null;
    }

    return $BloodSugarRecordsCopyWith<$Res>(_self.records!, (value) {
      return _then(_self.copyWith(records: value));
    });
  }
}

/// @nodoc

class _BloodSugarTrackingState implements BloodSugarTrackingState {
  const _BloodSugarTrackingState(
      {this.records = const BloodSugarRecords(records: []),
      this.isLoading = false,
      this.errorMessage});

  @override
  @JsonKey()
  final BloodSugarRecords? records;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of BloodSugarTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BloodSugarTrackingStateCopyWith<_BloodSugarTrackingState> get copyWith =>
      __$BloodSugarTrackingStateCopyWithImpl<_BloodSugarTrackingState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BloodSugarTrackingState &&
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
    return 'BloodSugarTrackingState(records: $records, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$BloodSugarTrackingStateCopyWith<$Res>
    implements $BloodSugarTrackingStateCopyWith<$Res> {
  factory _$BloodSugarTrackingStateCopyWith(_BloodSugarTrackingState value,
          $Res Function(_BloodSugarTrackingState) _then) =
      __$BloodSugarTrackingStateCopyWithImpl;
  @override
  @useResult
  $Res call({BloodSugarRecords? records, bool isLoading, String? errorMessage});

  @override
  $BloodSugarRecordsCopyWith<$Res>? get records;
}

/// @nodoc
class __$BloodSugarTrackingStateCopyWithImpl<$Res>
    implements _$BloodSugarTrackingStateCopyWith<$Res> {
  __$BloodSugarTrackingStateCopyWithImpl(this._self, this._then);

  final _BloodSugarTrackingState _self;
  final $Res Function(_BloodSugarTrackingState) _then;

  /// Create a copy of BloodSugarTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? records = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_BloodSugarTrackingState(
      records: freezed == records
          ? _self.records
          : records // ignore: cast_nullable_to_non_nullable
              as BloodSugarRecords?,
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

  /// Create a copy of BloodSugarTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BloodSugarRecordsCopyWith<$Res>? get records {
    if (_self.records == null) {
      return null;
    }

    return $BloodSugarRecordsCopyWith<$Res>(_self.records!, (value) {
      return _then(_self.copyWith(records: value));
    });
  }
}

// dart format on

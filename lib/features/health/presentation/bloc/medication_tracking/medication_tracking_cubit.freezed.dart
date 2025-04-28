// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication_tracking_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MedicationTrackingState {
  Medications get medications;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of MedicationTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MedicationTrackingStateCopyWith<MedicationTrackingState> get copyWith =>
      _$MedicationTrackingStateCopyWithImpl<MedicationTrackingState>(
          this as MedicationTrackingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MedicationTrackingState &&
            (identical(other.medications, medications) ||
                other.medications == medications) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, medications, isLoading, errorMessage);

  @override
  String toString() {
    return 'MedicationTrackingState(medications: $medications, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $MedicationTrackingStateCopyWith<$Res> {
  factory $MedicationTrackingStateCopyWith(MedicationTrackingState value,
          $Res Function(MedicationTrackingState) _then) =
      _$MedicationTrackingStateCopyWithImpl;
  @useResult
  $Res call({Medications medications, bool isLoading, String? errorMessage});

  $MedicationsCopyWith<$Res> get medications;
}

/// @nodoc
class _$MedicationTrackingStateCopyWithImpl<$Res>
    implements $MedicationTrackingStateCopyWith<$Res> {
  _$MedicationTrackingStateCopyWithImpl(this._self, this._then);

  final MedicationTrackingState _self;
  final $Res Function(MedicationTrackingState) _then;

  /// Create a copy of MedicationTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medications = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      medications: null == medications
          ? _self.medications
          : medications // ignore: cast_nullable_to_non_nullable
              as Medications,
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

  /// Create a copy of MedicationTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicationsCopyWith<$Res> get medications {
    return $MedicationsCopyWith<$Res>(_self.medications, (value) {
      return _then(_self.copyWith(medications: value));
    });
  }
}

/// @nodoc

class _MedicationState implements MedicationTrackingState {
  const _MedicationState(
      {this.medications = const Medications(medications: []),
      this.isLoading = false,
      this.errorMessage});

  @override
  @JsonKey()
  final Medications medications;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of MedicationTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MedicationStateCopyWith<_MedicationState> get copyWith =>
      __$MedicationStateCopyWithImpl<_MedicationState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MedicationState &&
            (identical(other.medications, medications) ||
                other.medications == medications) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, medications, isLoading, errorMessage);

  @override
  String toString() {
    return 'MedicationTrackingState(medications: $medications, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$MedicationStateCopyWith<$Res>
    implements $MedicationTrackingStateCopyWith<$Res> {
  factory _$MedicationStateCopyWith(
          _MedicationState value, $Res Function(_MedicationState) _then) =
      __$MedicationStateCopyWithImpl;
  @override
  @useResult
  $Res call({Medications medications, bool isLoading, String? errorMessage});

  @override
  $MedicationsCopyWith<$Res> get medications;
}

/// @nodoc
class __$MedicationStateCopyWithImpl<$Res>
    implements _$MedicationStateCopyWith<$Res> {
  __$MedicationStateCopyWithImpl(this._self, this._then);

  final _MedicationState _self;
  final $Res Function(_MedicationState) _then;

  /// Create a copy of MedicationTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? medications = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_MedicationState(
      medications: null == medications
          ? _self.medications
          : medications // ignore: cast_nullable_to_non_nullable
              as Medications,
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

  /// Create a copy of MedicationTrackingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicationsCopyWith<$Res> get medications {
    return $MedicationsCopyWith<$Res>(_self.medications, (value) {
      return _then(_self.copyWith(medications: value));
    });
  }
}

// dart format on

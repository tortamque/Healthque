// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_connection_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HealthConnectionState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HealthConnectionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HealthConnectionState()';
  }
}

/// @nodoc
class $HealthConnectionStateCopyWith<$Res> {
  $HealthConnectionStateCopyWith(
      HealthConnectionState _, $Res Function(HealthConnectionState) __);
}

/// @nodoc

class HealthConnectionStateInitial extends HealthConnectionState {
  const HealthConnectionStateInitial() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HealthConnectionStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HealthConnectionState.initial()';
  }
}

/// @nodoc

class HealthConnectionStateLoading extends HealthConnectionState {
  const HealthConnectionStateLoading() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HealthConnectionStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HealthConnectionState.loading()';
  }
}

/// @nodoc

class HealthConnectionStateConnected extends HealthConnectionState {
  const HealthConnectionStateConnected() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HealthConnectionStateConnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HealthConnectionState.connected()';
  }
}

/// @nodoc

class HealthConnectionStateError extends HealthConnectionState {
  const HealthConnectionStateError(this.message) : super._();

  final String message;

  /// Create a copy of HealthConnectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HealthConnectionStateErrorCopyWith<HealthConnectionStateError>
      get copyWith =>
          _$HealthConnectionStateErrorCopyWithImpl<HealthConnectionStateError>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HealthConnectionStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'HealthConnectionState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $HealthConnectionStateErrorCopyWith<$Res>
    implements $HealthConnectionStateCopyWith<$Res> {
  factory $HealthConnectionStateErrorCopyWith(HealthConnectionStateError value,
          $Res Function(HealthConnectionStateError) _then) =
      _$HealthConnectionStateErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$HealthConnectionStateErrorCopyWithImpl<$Res>
    implements $HealthConnectionStateErrorCopyWith<$Res> {
  _$HealthConnectionStateErrorCopyWithImpl(this._self, this._then);

  final HealthConnectionStateError _self;
  final $Res Function(HealthConnectionStateError) _then;

  /// Create a copy of HealthConnectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(HealthConnectionStateError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

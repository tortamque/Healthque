// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_sync_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FirebaseSyncState {
  bool get isLoading;
  String? get errorMessage;
  bool get syncSuccess;
  Map<String, dynamic>? get data;

  /// Create a copy of FirebaseSyncState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FirebaseSyncStateCopyWith<FirebaseSyncState> get copyWith =>
      _$FirebaseSyncStateCopyWithImpl<FirebaseSyncState>(
          this as FirebaseSyncState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseSyncState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.syncSuccess, syncSuccess) ||
                other.syncSuccess == syncSuccess) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMessage,
      syncSuccess, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'FirebaseSyncState(isLoading: $isLoading, errorMessage: $errorMessage, syncSuccess: $syncSuccess, data: $data)';
  }
}

/// @nodoc
abstract mixin class $FirebaseSyncStateCopyWith<$Res> {
  factory $FirebaseSyncStateCopyWith(
          FirebaseSyncState value, $Res Function(FirebaseSyncState) _then) =
      _$FirebaseSyncStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      String? errorMessage,
      bool syncSuccess,
      Map<String, dynamic>? data});
}

/// @nodoc
class _$FirebaseSyncStateCopyWithImpl<$Res>
    implements $FirebaseSyncStateCopyWith<$Res> {
  _$FirebaseSyncStateCopyWithImpl(this._self, this._then);

  final FirebaseSyncState _self;
  final $Res Function(FirebaseSyncState) _then;

  /// Create a copy of FirebaseSyncState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? syncSuccess = null,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      syncSuccess: null == syncSuccess
          ? _self.syncSuccess
          : syncSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _FirebaseSyncState implements FirebaseSyncState {
  const _FirebaseSyncState(
      {this.isLoading = false,
      this.errorMessage,
      this.syncSuccess = false,
      final Map<String, dynamic>? data})
      : _data = data;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool syncSuccess;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of FirebaseSyncState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FirebaseSyncStateCopyWith<_FirebaseSyncState> get copyWith =>
      __$FirebaseSyncStateCopyWithImpl<_FirebaseSyncState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirebaseSyncState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.syncSuccess, syncSuccess) ||
                other.syncSuccess == syncSuccess) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMessage,
      syncSuccess, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'FirebaseSyncState(isLoading: $isLoading, errorMessage: $errorMessage, syncSuccess: $syncSuccess, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$FirebaseSyncStateCopyWith<$Res>
    implements $FirebaseSyncStateCopyWith<$Res> {
  factory _$FirebaseSyncStateCopyWith(
          _FirebaseSyncState value, $Res Function(_FirebaseSyncState) _then) =
      __$FirebaseSyncStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? errorMessage,
      bool syncSuccess,
      Map<String, dynamic>? data});
}

/// @nodoc
class __$FirebaseSyncStateCopyWithImpl<$Res>
    implements _$FirebaseSyncStateCopyWith<$Res> {
  __$FirebaseSyncStateCopyWithImpl(this._self, this._then);

  final _FirebaseSyncState _self;
  final $Res Function(_FirebaseSyncState) _then;

  /// Create a copy of FirebaseSyncState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? syncSuccess = null,
    Object? data = freezed,
  }) {
    return _then(_FirebaseSyncState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      syncSuccess: null == syncSuccess
          ? _self.syncSuccess
          : syncSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on

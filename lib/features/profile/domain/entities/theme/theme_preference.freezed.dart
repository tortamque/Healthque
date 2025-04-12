// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_preference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ThemePreference {
  @HiveField(0)
  int get seedColorValue;

  /// Create a copy of ThemePreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThemePreferenceCopyWith<ThemePreference> get copyWith =>
      _$ThemePreferenceCopyWithImpl<ThemePreference>(
          this as ThemePreference, _$identity);

  /// Serializes this ThemePreference to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemePreference &&
            (identical(other.seedColorValue, seedColorValue) ||
                other.seedColorValue == seedColorValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seedColorValue);

  @override
  String toString() {
    return 'ThemePreference(seedColorValue: $seedColorValue)';
  }
}

/// @nodoc
abstract mixin class $ThemePreferenceCopyWith<$Res> {
  factory $ThemePreferenceCopyWith(
          ThemePreference value, $Res Function(ThemePreference) _then) =
      _$ThemePreferenceCopyWithImpl;
  @useResult
  $Res call({@HiveField(0) int seedColorValue});
}

/// @nodoc
class _$ThemePreferenceCopyWithImpl<$Res>
    implements $ThemePreferenceCopyWith<$Res> {
  _$ThemePreferenceCopyWithImpl(this._self, this._then);

  final ThemePreference _self;
  final $Res Function(ThemePreference) _then;

  /// Create a copy of ThemePreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seedColorValue = null,
  }) {
    return _then(_self.copyWith(
      seedColorValue: null == seedColorValue
          ? _self.seedColorValue
          : seedColorValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ThemePreference implements ThemePreference {
  const _ThemePreference({@HiveField(0) required this.seedColorValue});
  factory _ThemePreference.fromJson(Map<String, dynamic> json) =>
      _$ThemePreferenceFromJson(json);

  @override
  @HiveField(0)
  final int seedColorValue;

  /// Create a copy of ThemePreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ThemePreferenceCopyWith<_ThemePreference> get copyWith =>
      __$ThemePreferenceCopyWithImpl<_ThemePreference>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ThemePreferenceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThemePreference &&
            (identical(other.seedColorValue, seedColorValue) ||
                other.seedColorValue == seedColorValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seedColorValue);

  @override
  String toString() {
    return 'ThemePreference(seedColorValue: $seedColorValue)';
  }
}

/// @nodoc
abstract mixin class _$ThemePreferenceCopyWith<$Res>
    implements $ThemePreferenceCopyWith<$Res> {
  factory _$ThemePreferenceCopyWith(
          _ThemePreference value, $Res Function(_ThemePreference) _then) =
      __$ThemePreferenceCopyWithImpl;
  @override
  @useResult
  $Res call({@HiveField(0) int seedColorValue});
}

/// @nodoc
class __$ThemePreferenceCopyWithImpl<$Res>
    implements _$ThemePreferenceCopyWith<$Res> {
  __$ThemePreferenceCopyWithImpl(this._self, this._then);

  final _ThemePreference _self;
  final $Res Function(_ThemePreference) _then;

  /// Create a copy of ThemePreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? seedColorValue = null,
  }) {
    return _then(_ThemePreference(
      seedColorValue: null == seedColorValue
          ? _self.seedColorValue
          : seedColorValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

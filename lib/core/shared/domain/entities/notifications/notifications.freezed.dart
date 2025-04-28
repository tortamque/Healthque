// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocalNotifications {
  @HiveField(0)
  List<LocalNotification> get notifications;

  /// Create a copy of LocalNotifications
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocalNotificationsCopyWith<LocalNotifications> get copyWith =>
      _$LocalNotificationsCopyWithImpl<LocalNotifications>(
          this as LocalNotifications, _$identity);

  /// Serializes this LocalNotifications to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalNotifications &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(notifications));

  @override
  String toString() {
    return 'LocalNotifications(notifications: $notifications)';
  }
}

/// @nodoc
abstract mixin class $LocalNotificationsCopyWith<$Res> {
  factory $LocalNotificationsCopyWith(
          LocalNotifications value, $Res Function(LocalNotifications) _then) =
      _$LocalNotificationsCopyWithImpl;
  @useResult
  $Res call({@HiveField(0) List<LocalNotification> notifications});
}

/// @nodoc
class _$LocalNotificationsCopyWithImpl<$Res>
    implements $LocalNotificationsCopyWith<$Res> {
  _$LocalNotificationsCopyWithImpl(this._self, this._then);

  final LocalNotifications _self;
  final $Res Function(LocalNotifications) _then;

  /// Create a copy of LocalNotifications
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_self.copyWith(
      notifications: null == notifications
          ? _self.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<LocalNotification>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LocalNotifications implements LocalNotifications {
  const _LocalNotifications(
      {@HiveField(0) required final List<LocalNotification> notifications})
      : _notifications = notifications;
  factory _LocalNotifications.fromJson(Map<String, dynamic> json) =>
      _$LocalNotificationsFromJson(json);

  final List<LocalNotification> _notifications;
  @override
  @HiveField(0)
  List<LocalNotification> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  /// Create a copy of LocalNotifications
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocalNotificationsCopyWith<_LocalNotifications> get copyWith =>
      __$LocalNotificationsCopyWithImpl<_LocalNotifications>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocalNotificationsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocalNotifications &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  @override
  String toString() {
    return 'LocalNotifications(notifications: $notifications)';
  }
}

/// @nodoc
abstract mixin class _$LocalNotificationsCopyWith<$Res>
    implements $LocalNotificationsCopyWith<$Res> {
  factory _$LocalNotificationsCopyWith(
          _LocalNotifications value, $Res Function(_LocalNotifications) _then) =
      __$LocalNotificationsCopyWithImpl;
  @override
  @useResult
  $Res call({@HiveField(0) List<LocalNotification> notifications});
}

/// @nodoc
class __$LocalNotificationsCopyWithImpl<$Res>
    implements _$LocalNotificationsCopyWith<$Res> {
  __$LocalNotificationsCopyWithImpl(this._self, this._then);

  final _LocalNotifications _self;
  final $Res Function(_LocalNotifications) _then;

  /// Create a copy of LocalNotifications
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_LocalNotifications(
      notifications: null == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<LocalNotification>,
    ));
  }
}

// dart format on

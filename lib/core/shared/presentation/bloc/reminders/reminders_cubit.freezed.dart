// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminders_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemindersState {
  LocalNotifications get notifications;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of RemindersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemindersStateCopyWith<RemindersState> get copyWith =>
      _$RemindersStateCopyWithImpl<RemindersState>(
          this as RemindersState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemindersState &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, notifications, isLoading, errorMessage);

  @override
  String toString() {
    return 'RemindersState(notifications: $notifications, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $RemindersStateCopyWith<$Res> {
  factory $RemindersStateCopyWith(
          RemindersState value, $Res Function(RemindersState) _then) =
      _$RemindersStateCopyWithImpl;
  @useResult
  $Res call(
      {LocalNotifications notifications, bool isLoading, String? errorMessage});

  $LocalNotificationsCopyWith<$Res> get notifications;
}

/// @nodoc
class _$RemindersStateCopyWithImpl<$Res>
    implements $RemindersStateCopyWith<$Res> {
  _$RemindersStateCopyWithImpl(this._self, this._then);

  final RemindersState _self;
  final $Res Function(RemindersState) _then;

  /// Create a copy of RemindersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      notifications: null == notifications
          ? _self.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as LocalNotifications,
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

  /// Create a copy of RemindersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalNotificationsCopyWith<$Res> get notifications {
    return $LocalNotificationsCopyWith<$Res>(_self.notifications, (value) {
      return _then(_self.copyWith(notifications: value));
    });
  }
}

/// @nodoc

class RemindersStateReminders implements RemindersState {
  const RemindersStateReminders(
      {this.notifications = const LocalNotifications(notifications: []),
      this.isLoading = false,
      this.errorMessage});

  @override
  @JsonKey()
  final LocalNotifications notifications;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of RemindersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemindersStateRemindersCopyWith<RemindersStateReminders> get copyWith =>
      _$RemindersStateRemindersCopyWithImpl<RemindersStateReminders>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemindersStateReminders &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, notifications, isLoading, errorMessage);

  @override
  String toString() {
    return 'RemindersState.reminders(notifications: $notifications, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $RemindersStateRemindersCopyWith<$Res>
    implements $RemindersStateCopyWith<$Res> {
  factory $RemindersStateRemindersCopyWith(RemindersStateReminders value,
          $Res Function(RemindersStateReminders) _then) =
      _$RemindersStateRemindersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {LocalNotifications notifications, bool isLoading, String? errorMessage});

  @override
  $LocalNotificationsCopyWith<$Res> get notifications;
}

/// @nodoc
class _$RemindersStateRemindersCopyWithImpl<$Res>
    implements $RemindersStateRemindersCopyWith<$Res> {
  _$RemindersStateRemindersCopyWithImpl(this._self, this._then);

  final RemindersStateReminders _self;
  final $Res Function(RemindersStateReminders) _then;

  /// Create a copy of RemindersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? notifications = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(RemindersStateReminders(
      notifications: null == notifications
          ? _self.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as LocalNotifications,
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

  /// Create a copy of RemindersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalNotificationsCopyWith<$Res> get notifications {
    return $LocalNotificationsCopyWith<$Res>(_self.notifications, (value) {
      return _then(_self.copyWith(notifications: value));
    });
  }
}

// dart format on

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
  LocalNotifications get allNotifications;
  List<LocalNotification> get workoutNotifications;
  List<LocalNotification> get waterNotifications;
  List<LocalNotification> get temperatureNotifications;
  List<LocalNotification> get bloodPressureNotifications;
  List<LocalNotification> get bloodSugarNotifications;
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
            (identical(other.allNotifications, allNotifications) ||
                other.allNotifications == allNotifications) &&
            const DeepCollectionEquality()
                .equals(other.workoutNotifications, workoutNotifications) &&
            const DeepCollectionEquality()
                .equals(other.waterNotifications, waterNotifications) &&
            const DeepCollectionEquality().equals(
                other.temperatureNotifications, temperatureNotifications) &&
            const DeepCollectionEquality().equals(
                other.bloodPressureNotifications, bloodPressureNotifications) &&
            const DeepCollectionEquality().equals(
                other.bloodSugarNotifications, bloodSugarNotifications) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      allNotifications,
      const DeepCollectionEquality().hash(workoutNotifications),
      const DeepCollectionEquality().hash(waterNotifications),
      const DeepCollectionEquality().hash(temperatureNotifications),
      const DeepCollectionEquality().hash(bloodPressureNotifications),
      const DeepCollectionEquality().hash(bloodSugarNotifications),
      isLoading,
      errorMessage);

  @override
  String toString() {
    return 'RemindersState(allNotifications: $allNotifications, workoutNotifications: $workoutNotifications, waterNotifications: $waterNotifications, temperatureNotifications: $temperatureNotifications, bloodPressureNotifications: $bloodPressureNotifications, bloodSugarNotifications: $bloodSugarNotifications, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $RemindersStateCopyWith<$Res> {
  factory $RemindersStateCopyWith(
          RemindersState value, $Res Function(RemindersState) _then) =
      _$RemindersStateCopyWithImpl;
  @useResult
  $Res call(
      {LocalNotifications allNotifications,
      List<LocalNotification> workoutNotifications,
      List<LocalNotification> waterNotifications,
      List<LocalNotification> temperatureNotifications,
      List<LocalNotification> bloodPressureNotifications,
      List<LocalNotification> bloodSugarNotifications,
      bool isLoading,
      String? errorMessage});

  $LocalNotificationsCopyWith<$Res> get allNotifications;
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
    Object? allNotifications = null,
    Object? workoutNotifications = null,
    Object? waterNotifications = null,
    Object? temperatureNotifications = null,
    Object? bloodPressureNotifications = null,
    Object? bloodSugarNotifications = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      allNotifications: null == allNotifications
          ? _self.allNotifications
          : allNotifications // ignore: cast_nullable_to_non_nullable
              as LocalNotifications,
      workoutNotifications: null == workoutNotifications
          ? _self.workoutNotifications
          : workoutNotifications // ignore: cast_nullable_to_non_nullable
              as List<LocalNotification>,
      waterNotifications: null == waterNotifications
          ? _self.waterNotifications
          : waterNotifications // ignore: cast_nullable_to_non_nullable
              as List<LocalNotification>,
      temperatureNotifications: null == temperatureNotifications
          ? _self.temperatureNotifications
          : temperatureNotifications // ignore: cast_nullable_to_non_nullable
              as List<LocalNotification>,
      bloodPressureNotifications: null == bloodPressureNotifications
          ? _self.bloodPressureNotifications
          : bloodPressureNotifications // ignore: cast_nullable_to_non_nullable
              as List<LocalNotification>,
      bloodSugarNotifications: null == bloodSugarNotifications
          ? _self.bloodSugarNotifications
          : bloodSugarNotifications // ignore: cast_nullable_to_non_nullable
              as List<LocalNotification>,
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
  $LocalNotificationsCopyWith<$Res> get allNotifications {
    return $LocalNotificationsCopyWith<$Res>(_self.allNotifications, (value) {
      return _then(_self.copyWith(allNotifications: value));
    });
  }
}

/// @nodoc

class RemindersStateReminders implements RemindersState {
  const RemindersStateReminders(
      {this.allNotifications = const LocalNotifications(notifications: []),
      final List<LocalNotification> workoutNotifications =
          const <LocalNotification>[],
      final List<LocalNotification> waterNotifications =
          const <LocalNotification>[],
      final List<LocalNotification> temperatureNotifications =
          const <LocalNotification>[],
      final List<LocalNotification> bloodPressureNotifications =
          const <LocalNotification>[],
      final List<LocalNotification> bloodSugarNotifications =
          const <LocalNotification>[],
      this.isLoading = false,
      this.errorMessage})
      : _workoutNotifications = workoutNotifications,
        _waterNotifications = waterNotifications,
        _temperatureNotifications = temperatureNotifications,
        _bloodPressureNotifications = bloodPressureNotifications,
        _bloodSugarNotifications = bloodSugarNotifications;

  @override
  @JsonKey()
  final LocalNotifications allNotifications;
  final List<LocalNotification> _workoutNotifications;
  @override
  @JsonKey()
  List<LocalNotification> get workoutNotifications {
    if (_workoutNotifications is EqualUnmodifiableListView)
      return _workoutNotifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workoutNotifications);
  }

  final List<LocalNotification> _waterNotifications;
  @override
  @JsonKey()
  List<LocalNotification> get waterNotifications {
    if (_waterNotifications is EqualUnmodifiableListView)
      return _waterNotifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waterNotifications);
  }

  final List<LocalNotification> _temperatureNotifications;
  @override
  @JsonKey()
  List<LocalNotification> get temperatureNotifications {
    if (_temperatureNotifications is EqualUnmodifiableListView)
      return _temperatureNotifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperatureNotifications);
  }

  final List<LocalNotification> _bloodPressureNotifications;
  @override
  @JsonKey()
  List<LocalNotification> get bloodPressureNotifications {
    if (_bloodPressureNotifications is EqualUnmodifiableListView)
      return _bloodPressureNotifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bloodPressureNotifications);
  }

  final List<LocalNotification> _bloodSugarNotifications;
  @override
  @JsonKey()
  List<LocalNotification> get bloodSugarNotifications {
    if (_bloodSugarNotifications is EqualUnmodifiableListView)
      return _bloodSugarNotifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bloodSugarNotifications);
  }

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
            (identical(other.allNotifications, allNotifications) ||
                other.allNotifications == allNotifications) &&
            const DeepCollectionEquality()
                .equals(other._workoutNotifications, _workoutNotifications) &&
            const DeepCollectionEquality()
                .equals(other._waterNotifications, _waterNotifications) &&
            const DeepCollectionEquality().equals(
                other._temperatureNotifications, _temperatureNotifications) &&
            const DeepCollectionEquality().equals(
                other._bloodPressureNotifications,
                _bloodPressureNotifications) &&
            const DeepCollectionEquality().equals(
                other._bloodSugarNotifications, _bloodSugarNotifications) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      allNotifications,
      const DeepCollectionEquality().hash(_workoutNotifications),
      const DeepCollectionEquality().hash(_waterNotifications),
      const DeepCollectionEquality().hash(_temperatureNotifications),
      const DeepCollectionEquality().hash(_bloodPressureNotifications),
      const DeepCollectionEquality().hash(_bloodSugarNotifications),
      isLoading,
      errorMessage);

  @override
  String toString() {
    return 'RemindersState.reminders(allNotifications: $allNotifications, workoutNotifications: $workoutNotifications, waterNotifications: $waterNotifications, temperatureNotifications: $temperatureNotifications, bloodPressureNotifications: $bloodPressureNotifications, bloodSugarNotifications: $bloodSugarNotifications, isLoading: $isLoading, errorMessage: $errorMessage)';
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
      {LocalNotifications allNotifications,
      List<LocalNotification> workoutNotifications,
      List<LocalNotification> waterNotifications,
      List<LocalNotification> temperatureNotifications,
      List<LocalNotification> bloodPressureNotifications,
      List<LocalNotification> bloodSugarNotifications,
      bool isLoading,
      String? errorMessage});

  @override
  $LocalNotificationsCopyWith<$Res> get allNotifications;
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
    Object? allNotifications = null,
    Object? workoutNotifications = null,
    Object? waterNotifications = null,
    Object? temperatureNotifications = null,
    Object? bloodPressureNotifications = null,
    Object? bloodSugarNotifications = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(RemindersStateReminders(
      allNotifications: null == allNotifications
          ? _self.allNotifications
          : allNotifications // ignore: cast_nullable_to_non_nullable
              as LocalNotifications,
      workoutNotifications: null == workoutNotifications
          ? _self._workoutNotifications
          : workoutNotifications // ignore: cast_nullable_to_non_nullable
              as List<LocalNotification>,
      waterNotifications: null == waterNotifications
          ? _self._waterNotifications
          : waterNotifications // ignore: cast_nullable_to_non_nullable
              as List<LocalNotification>,
      temperatureNotifications: null == temperatureNotifications
          ? _self._temperatureNotifications
          : temperatureNotifications // ignore: cast_nullable_to_non_nullable
              as List<LocalNotification>,
      bloodPressureNotifications: null == bloodPressureNotifications
          ? _self._bloodPressureNotifications
          : bloodPressureNotifications // ignore: cast_nullable_to_non_nullable
              as List<LocalNotification>,
      bloodSugarNotifications: null == bloodSugarNotifications
          ? _self._bloodSugarNotifications
          : bloodSugarNotifications // ignore: cast_nullable_to_non_nullable
              as List<LocalNotification>,
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
  $LocalNotificationsCopyWith<$Res> get allNotifications {
    return $LocalNotificationsCopyWith<$Res>(_self.allNotifications, (value) {
      return _then(_self.copyWith(allNotifications: value));
    });
  }
}

// dart format on

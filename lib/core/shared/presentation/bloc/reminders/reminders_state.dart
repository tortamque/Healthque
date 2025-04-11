part of 'reminders_cubit.dart';

@freezed
sealed class RemindersState with _$RemindersState {
  const factory RemindersState.reminders({
    @Default(LocalNotifications(notifications: [])) LocalNotifications allNotifications,
    @Default(<LocalNotification>[]) List<LocalNotification> workoutNotifications,
    @Default(<LocalNotification>[]) List<LocalNotification> waterNotifications,
    @Default(<LocalNotification>[]) List<LocalNotification> temperatureNotifications,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = RemindersStateReminders;
}

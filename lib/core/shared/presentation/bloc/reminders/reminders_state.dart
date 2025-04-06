part of 'reminders_cubit.dart';

@freezed
sealed class RemindersState with _$RemindersState {
  const factory RemindersState.reminders({
    @Default(LocalNotifications(notifications: [])) LocalNotifications allNotifications,
    @Default(<LocalNotification>[]) List<LocalNotification> workoutNotifications,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = RemindersStateReminders;
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/utils/utils.dart';

part 'reminders_state.dart';
part 'reminders_cubit.freezed.dart';

class RemindersCubit extends Cubit<RemindersState> {
  RemindersCubit(
    this._getNotificationsUseCase,
    this._saveNotificationUseCase,
    this._deleteNotificationByIdUseCase,
  ) : super(RemindersState.reminders());

  final GetNotificationsUseCase _getNotificationsUseCase;
  final SaveNotificationsUseCase _saveNotificationUseCase;
  final DeleteNotificationByIdUseCase _deleteNotificationByIdUseCase;

  final LocalNotificationService _notificationService = LocalNotificationService();

  void fetchNotifications() {
    final notifications = _getNotificationsUseCase.call(null) ?? LocalNotifications(notifications: []);
    final workoutNotifications =
        notifications.notifications.where((n) => n.type == LocalNotificationType.workout).toList();
    emit(
      RemindersState.reminders(
        allNotifications: notifications,
        workoutNotifications: workoutNotifications,
        isLoading: false,
        errorMessage: null,
      ),
    );
  }

  Future<void> scheduleReminder({
    required DateTime scheduledDateTime,
    required String title,
    required String body,
    DateTimeComponents matchDateTimeComponents = DateTimeComponents.dayOfWeekAndTime,
  }) async {
    final currentNotifications = _getNotificationsUseCase.call(null) ?? LocalNotifications(notifications: []);
    final int newId = currentNotifications.notifications.length + 1;

    await _notificationService.scheduleNotification(
      id: newId,
      title: title,
      body: body,
      scheduledDate: scheduledDateTime,
      matchDateTimeComponents: matchDateTimeComponents,
    );

    final newNotification = LocalNotification(
      id: newId,
      type: LocalNotificationType.workout,
      scheduledDate: scheduledDateTime,
      title: title,
      body: body,
    );

    final updatedNotifications = currentNotifications.copyWith(
      notifications: List.from(currentNotifications.notifications)..add(newNotification),
    );

    await _saveNotificationUseCase.call(updatedNotifications);

    final workoutNotifications =
        updatedNotifications.notifications.where((n) => n.type == LocalNotificationType.workout).toList();

    emit(
      RemindersState.reminders(
        allNotifications: updatedNotifications,
        workoutNotifications: workoutNotifications,
        isLoading: false,
        errorMessage: null,
      ),
    );
  }

  Future<void> deleteReminder(int notificationId) async {
    await _deleteNotificationByIdUseCase.call(notificationId);

    final updatedNotifications = _getNotificationsUseCase.call(null) ?? LocalNotifications(notifications: []);
    final workoutNotifications =
        updatedNotifications.notifications.where((n) => n.type == LocalNotificationType.workout).toList();

    emit(
      RemindersState.reminders(
        allNotifications: updatedNotifications,
        workoutNotifications: workoutNotifications,
        isLoading: false,
        errorMessage: null,
      ),
    );
  }
}

import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  final notifinationsPlugin = FlutterLocalNotificationsPlugin();

  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  Future<void> init() async {
    if (_isInitialized) return;

    final android = AndroidInitializationSettings('@mipmap/ic_launcher');
    final settings = InitializationSettings(android: android);

    await notifinationsPlugin.initialize(settings);
    _isInitialized = true;
  }

  NotificationDetails get _notificationDetails => NotificationDetails(
        android: AndroidNotificationDetails(
          'notifications_channel_id',
          'Notifications Channel',
          channelDescription: 'Notifications Channel',
          importance: Importance.max,
          priority: Priority.high,
        ),
      );

  NotificationDetails get _repeatingNotificationDetails => NotificationDetails(
        android: AndroidNotificationDetails(
          'repeating_notifications_channel_id',
          'Repeating Notifications Channel',
          channelDescription: 'Repeating Notifications Channel',
          importance: Importance.max,
          priority: Priority.high,
        ),
      );

  Future<void> scheduleNotification({
    int id = 0,
    DateTimeComponents matchDateTimeComponents = DateTimeComponents.dayOfWeekAndTime,
    required String title,
    required String body,
    required DateTime scheduledDate,
  }) =>
      notifinationsPlugin.zonedSchedule(
        id,
        title,
        body,
        tz.TZDateTime.from(scheduledDate, tz.local),
        _notificationDetails,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        matchDateTimeComponents: matchDateTimeComponents,
      );

  Future<void> showRepeatingNotification({
    int id = 0,
    String? title,
    String? body,
    required RepeatInterval repeatInterval,
  }) =>
      notifinationsPlugin.periodicallyShow(
        id,
        title,
        body,
        repeatInterval,
        _repeatingNotificationDetails,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      );

  Future<void> cancelNotification({
    required int id,
  }) =>
      notifinationsPlugin.cancel(id);

  Future<void> get pendingNotificationRequests => notifinationsPlugin.pendingNotificationRequests();
}

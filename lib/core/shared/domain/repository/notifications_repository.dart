import 'package:healthque/core/shared/shared.dart';

abstract class NotificationsRepository {
  LocalNotifications? getNotifications();
  Future<void> saveNotifications(LocalNotifications notifications);
  Future<void> deleteNotificationById(int id);
  List<LocalNotification> getNotificationsByType(LocalNotificationType type);
}

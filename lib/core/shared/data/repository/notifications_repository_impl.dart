import 'package:healthque/core/shared/shared.dart';

class NotificationsRepositoryImpl implements NotificationsRepository {
  final NotificationsDbService _notificationsDbService;

  NotificationsRepositoryImpl(this._notificationsDbService);

  @override
  LocalNotifications? getNotifications() => _notificationsDbService.getNotifications();

  @override
  Future<void> saveNotifications(LocalNotifications notifications) =>
      _notificationsDbService.saveNotifications(notifications);

  @override
  Future<void> deleteNotificationById(int id) => _notificationsDbService.deleteNotificationById(id);

  @override
  List<LocalNotification> getNotificationsByType(LocalNotificationType type) =>
      _notificationsDbService.getNotificationsByType(type);
}

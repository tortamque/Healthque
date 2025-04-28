import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/utils/utils.dart';

abstract class NotificationsDbService {
  LocalNotifications? getNotifications();
  Future<void> saveNotifications(LocalNotifications notification);
  Future<void> deleteNotificationById(int id);
  List<LocalNotification> getNotificationsByType(LocalNotificationType type);
}

class NotificationsDbServiceImpl implements NotificationsDbService {
  final HiveManager _manager;

  NotificationsDbServiceImpl(this._manager);

  @override
  LocalNotifications? getNotifications() => _manager.box.get(_manager.hiveKey);

  @override
  Future<void> saveNotifications(LocalNotifications notification) => _manager.box.put(_manager.hiveKey, notification);

  @override
  Future<void> deleteNotificationById(int id) async {
    final current = _manager.box.get(_manager.hiveKey);
    if (current != null) {
      final updatedList = current.notifications.where((n) => n.id != id).toList();
      final updatedContainer = current.copyWith(notifications: updatedList);
      await _manager.box.put(_manager.hiveKey, updatedContainer);
    }
  }

  @override
  List<LocalNotification> getNotificationsByType(LocalNotificationType type) {
    final current = _manager.box.get(_manager.hiveKey);
    if (current != null) {
      return current.notifications.where((n) => n.type == type).toList();
    }
    return [];
  }
}

import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/utils/utils.dart';

abstract class NotificationsDbService {
  LocalNotifications? getNotifications();
  Future<void> saveNotifications(LocalNotifications notification);
  Future<void> deleteNotificationById(int id);
}

class NotificationsDbServiceImpl implements NotificationsDbService {
  final NotificationsHiveManager _manager;

  NotificationsDbServiceImpl(this._manager);

  @override
  LocalNotifications? getNotifications() => _manager.notifications.get(_manager.hiveKey);

  @override
  Future<void> saveNotifications(LocalNotifications notification) =>
      _manager.notifications.put(_manager.hiveKey, notification);

  @override
  Future<void> deleteNotificationById(int id) async {
    final current = _manager.notifications.get(_manager.hiveKey);
    if (current != null) {
      final updatedList = current.notifications.where((n) => n.id != id).toList();
      final updatedContainer = current.copyWith(notifications: updatedList);
      await _manager.notifications.put(_manager.hiveKey, updatedContainer);
    }
  }
}

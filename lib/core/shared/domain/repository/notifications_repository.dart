import 'package:healthque/core/shared/shared.dart';

abstract class NotificationsRepository {
  LocalNotifications? getNotifications();
  Future<void> saveNotifications(LocalNotifications notifications);
}

import 'package:healthque/core/shared/shared.dart';
import 'package:hive_flutter/hive_flutter.dart';

class NotificationsHiveManager {
  late Box<LocalNotifications> notifications;

  String get hiveKey => 'local_notifications';

  Future<void> init() async {
    notifications = await Hive.openBox<LocalNotifications>(hiveKey);
  }
}

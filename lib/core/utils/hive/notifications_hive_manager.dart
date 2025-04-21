import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/utils/hive/hive_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';

class NotificationsHiveManager implements HiveManager<LocalNotifications> {
  @override
  late Box<LocalNotifications> box;

  @override
  String get hiveKey => 'local_notifications';

  @override
  Future<void> init() async {
    box = await Hive.openBox<LocalNotifications>(hiveKey);
  }
}

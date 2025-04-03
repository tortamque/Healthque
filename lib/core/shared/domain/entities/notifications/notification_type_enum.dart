import 'package:hive/hive.dart';

part 'notification_type_enum.g.dart';

@HiveType(typeId: 5, adapterName: 'LocalNotificationTypeAdapter')
enum LocalNotificationType {
  @HiveField(0)
  workout,
}

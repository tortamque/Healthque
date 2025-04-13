import 'package:hive/hive.dart';

part 'notification_type_enum.g.dart';

@HiveType(typeId: 5, adapterName: 'LocalNotificationTypeAdapter')
enum LocalNotificationType {
  @HiveField(0)
  workout,
  @HiveField(1)
  water,
  @HiveField(2)
  courseTreatment,
  @HiveField(3)
  temperature,
  @HiveField(4)
  bloodPressure,
  @HiveField(5)
  bloodSugar,
}

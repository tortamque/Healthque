import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/core/shared/domain/entities/notifications/notification_type_enum.dart';
import 'package:hive/hive.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
@HiveType(typeId: 6, adapterName: 'LocalNotificationAdapter')
abstract class LocalNotification with _$LocalNotification {
  const factory LocalNotification({
    @HiveField(0) required int id,
    @HiveField(1) required LocalNotificationType type,
    @HiveField(2) required DateTime scheduledDate,
    @HiveField(3) required String title,
    @HiveField(4) required String body,
  }) = _LocalNotification;

  factory LocalNotification.fromJson(Map<String, dynamic> json) => _$LocalNotificationFromJson(json);
}

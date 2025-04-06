import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/core/shared/domain/entities/notifications/notification.dart';
import 'package:hive/hive.dart';

part 'notifications.freezed.dart';
part 'notifications.g.dart';

@freezed
@HiveType(typeId: 7, adapterName: 'LocalNotificationsAdapter')
abstract class LocalNotifications with _$LocalNotifications {
  const factory LocalNotifications({
    @HiveField(0) required List<LocalNotification> notifications,
  }) = _LocalNotifications;

  factory LocalNotifications.fromJson(Map<String, dynamic> json) => _$LocalNotificationsFromJson(json);
}

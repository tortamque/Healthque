import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/usecases/usecase.dart';

class GetNotificationsUseCase implements UseCase<LocalNotifications?, void> {
  final NotificationsRepository repository;

  GetNotificationsUseCase(this.repository);

  @override
  LocalNotifications? call(void params) => repository.getNotifications();
}

class SaveNotificationsUseCase implements AsyncUseCase<void, LocalNotifications> {
  final NotificationsRepository repository;

  SaveNotificationsUseCase(this.repository);

  @override
  Future<void> call(LocalNotifications params) => repository.saveNotifications(params);
}

class DeleteNotificationByIdUseCase implements AsyncUseCase<void, int> {
  final NotificationsRepository repository;

  DeleteNotificationByIdUseCase(this.repository);

  @override
  Future<void> call(int params) => repository.deleteNotificationById(params);
}

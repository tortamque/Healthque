import 'package:get_it/get_it.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/utils/hive/hive.dart';
import 'package:healthque/features/activity/activity.dart';

final sl = GetIt.instance;

void initializeDependencies() {
  sl
    // Other
    ..registerSingleton<UserHiveManager>(UserHiveManager())
    ..registerSingleton<WorkoutsHiveManager>(WorkoutsHiveManager())
    ..registerSingleton<NotificationsHiveManager>(NotificationsHiveManager())

    // Services
    ..registerSingleton<UserDbService>(UserDbServiceImpl(sl()))
    ..registerSingleton<ActivityDbService>(ActivityDbServiceImpl(sl()))
    ..registerSingleton<NotificationsDbService>(NotificationsDbServiceImpl(sl()))

    // Repositories
    ..registerSingleton<UserRepository>(UserRepositoryImpl(sl()))
    ..registerSingleton<ActivityRepository>(ActivityRepositoryImpl(sl()))
    ..registerSingleton<NotificationsRepository>(NotificationsRepositoryImpl(sl()))

    // Use cases
    ..registerSingleton<GetUserUsecase>(GetUserUsecase(sl()))
    ..registerSingleton<SaveUserUsecase>(SaveUserUsecase(sl()))
    ..registerSingleton<GetWorkoutsUseCase>(GetWorkoutsUseCase(sl()))
    ..registerSingleton<SaveWorkoutsUseCase>(SaveWorkoutsUseCase(sl()))
    ..registerSingleton<DeleteWorkoutsUseCase>(DeleteWorkoutsUseCase(sl()))
    ..registerSingleton<GetNotificationsUseCase>(GetNotificationsUseCase(sl()))
    ..registerSingleton<SaveNotificationsUseCase>(SaveNotificationsUseCase(sl()));
  // Blocs
}

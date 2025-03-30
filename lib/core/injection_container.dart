import 'package:get_it/get_it.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/utils/hive/user_hive_manager.dart';

final sl = GetIt.instance;

void initializeDependencies() {
  sl
    // Other
    ..registerSingleton<UserHiveManager>(UserHiveManager())

    // Services
    ..registerSingleton<UserDbService>(UserDbServiceImpl(sl()))

    // Repositories
    ..registerSingleton<UserRepository>(UserRepositoryImpl(sl()))

    // Use cases
    ..registerSingleton<GetUserUsecase>(GetUserUsecase(sl()))
    ..registerSingleton<SaveUserUsecase>(SaveUserUsecase(sl()));

  // Blocs
}

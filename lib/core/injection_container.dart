import 'package:get_it/get_it.dart';
import 'package:healthque/core/utils/hive/user_hive_manager.dart';

final sl = GetIt.instance;

void initializeDependencies() {
  // Dio
  // Api Services
  // Repositories
  // Use cases
  // Blocs
  // Other
  sl.registerSingleton<UserHiveManager>(UserHiveManager());
}

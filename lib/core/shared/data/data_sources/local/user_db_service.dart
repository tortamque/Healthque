import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/utils/hive/user_hive_manager.dart';

abstract class UserDbService {
  User? getUser();
  Future<void> saveUser(User user);
}

class UserDbServiceImpl implements UserDbService {
  final UserHiveManager _manager;

  UserDbServiceImpl(this._manager);

  @override
  User? getUser() => _manager.userBox.get(_manager.hiveKey);

  @override
  Future<void> saveUser(User user) => _manager.userBox.put(_manager.hiveKey, user);
}

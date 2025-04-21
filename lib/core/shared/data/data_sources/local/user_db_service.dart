import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/utils/hive/hive.dart';

abstract class UserDbService {
  User? getUser();
  Future<void> saveUser(User user);
}

class UserDbServiceImpl implements UserDbService {
  final HiveManager _manager;

  UserDbServiceImpl(this._manager);

  @override
  User? getUser() => _manager.box.get(_manager.hiveKey);

  @override
  Future<void> saveUser(User user) => _manager.box.put(_manager.hiveKey, user);
}

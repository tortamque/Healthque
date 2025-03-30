import 'package:healthque/core/shared/shared.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDbService _userDbService;

  UserRepositoryImpl(this._userDbService);

  @override
  User? getUser() => _userDbService.getUser();

  @override
  Future<void> saveUser(User user) => _userDbService.saveUser(user);
}

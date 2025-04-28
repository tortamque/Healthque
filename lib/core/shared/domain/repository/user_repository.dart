import 'package:healthque/core/shared/shared.dart';

abstract class UserRepository {
  User? getUser();
  Future<void> saveUser(User user);
}

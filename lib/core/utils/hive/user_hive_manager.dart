import 'package:healthque/core/shared/shared.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UserHiveManager {
  late Box<User> userBox;

  String get hiveKey => 'user';

  Future<void> init() async {
    userBox = await Hive.openBox<User>(hiveKey);
  }
}

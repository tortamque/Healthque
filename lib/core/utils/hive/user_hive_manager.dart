import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/utils/hive/hive_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UserHiveManager implements HiveManager<User> {
  @override
  late Box<User> box;

  @override
  String get hiveKey => 'user';

  @override
  Future<void> init() async {
    box = await Hive.openBox<User>(hiveKey);
  }
}

import 'package:healthque/core/utils/hive/hive_manager.dart';
import 'package:healthque/features/profile/profile.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ThemePreferenceHiveManager implements HiveManager<ThemePreference> {
  @override
  late Box<ThemePreference> box;

  @override
  String get hiveKey => 'theme_preference';

  @override
  Future<void> init() async {
    box = await Hive.openBox<ThemePreference>(hiveKey);
  }
}

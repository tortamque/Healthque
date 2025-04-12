import 'package:healthque/features/profile/profile.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ThemePreferenceHiveManager {
  late Box<ThemePreference> themePreferenceBox;

  String get hiveKey => 'theme_preference';

  Future<void> init() async {
    themePreferenceBox = await Hive.openBox<ThemePreference>(hiveKey);
  }
}

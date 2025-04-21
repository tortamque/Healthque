import 'package:healthque/core/utils/hive/hive.dart';
import 'package:healthque/features/profile/profile.dart';

abstract class ThemePreferenceDbService {
  ThemePreference? getThemePreference();
  Future<void> saveThemePreference(ThemePreference themePreference);
}

class ThemePreferenceDbServiceImpl implements ThemePreferenceDbService {
  final HiveManager _manager;

  ThemePreferenceDbServiceImpl(this._manager);

  @override
  ThemePreference? getThemePreference() => _manager.box.get(_manager.hiveKey);

  @override
  Future<void> saveThemePreference(ThemePreference themePreference) =>
      _manager.box.put(_manager.hiveKey, themePreference);
}

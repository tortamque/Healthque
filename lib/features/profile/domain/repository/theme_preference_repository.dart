import 'package:healthque/features/profile/profile.dart';

abstract class ThemePreferenceRepository {
  ThemePreference? getThemePreference();
  Future<void> saveThemePreference(ThemePreference themePreference);
}

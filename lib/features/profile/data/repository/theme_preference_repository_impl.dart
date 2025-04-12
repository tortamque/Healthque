import 'package:healthque/features/profile/profile.dart';

class ThemePreferenceRepositoryImpl implements ThemePreferenceRepository {
  final ThemePreferenceDbService _dbService;

  ThemePreferenceRepositoryImpl(this._dbService);

  @override
  ThemePreference? getThemePreference() => _dbService.getThemePreference();

  @override
  Future<void> saveThemePreference(ThemePreference themePreference) => _dbService.saveThemePreference(themePreference);
}

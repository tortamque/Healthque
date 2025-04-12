import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/features/profile/profile.dart';

class ThemeCubit extends Cubit<Color> {
  ThemeCubit(
    this._getThemePreferenceUseCase,
    this._saveThemePreferenceUseCase,
  ) : super(Colors.greenAccent) {
    _loadTheme();
  }

  final GetThemePreferenceUseCase _getThemePreferenceUseCase;
  final SaveThemePreferenceUseCase _saveThemePreferenceUseCase;

  Future<void> _loadTheme() async {
    final themePreference = _getThemePreferenceUseCase(null);
    if (themePreference != null) {
      emit(Color(themePreference.seedColorValue));
    }
  }

  void updateTheme(Color newSeedColor) async {
    emit(newSeedColor);
    final theme = ThemePreference(seedColorValue: newSeedColor.toARGB32());
    await _saveThemePreferenceUseCase(theme);
  }
}

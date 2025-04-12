import 'package:healthque/core/usecases/usecase.dart';
import 'package:healthque/features/profile/profile.dart';

class GetThemePreferenceUseCase implements UseCase<ThemePreference?, void> {
  final ThemePreferenceRepository repository;

  GetThemePreferenceUseCase(this.repository);

  @override
  ThemePreference? call(void params) => repository.getThemePreference();
}

class SaveThemePreferenceUseCase implements AsyncUseCase<void, ThemePreference> {
  final ThemePreferenceRepository repository;

  SaveThemePreferenceUseCase(this.repository);

  @override
  Future<void> call(ThemePreference params) => repository.saveThemePreference(params);
}

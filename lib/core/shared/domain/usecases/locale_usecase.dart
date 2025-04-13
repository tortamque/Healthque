import 'dart:ui';

import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/usecases/usecase.dart';

class GetLocaleUseCase implements UseCase<Locale?, void> {
  final LocaleRepository repository;
  GetLocaleUseCase(this.repository);

  @override
  Locale? call(void params) => repository.getLocale();
}

class SaveLocaleUseCase implements AsyncUseCase<void, Locale> {
  final LocaleRepository repository;
  SaveLocaleUseCase(this.repository);

  @override
  Future<void> call(Locale locale) => repository.saveLocale(locale);
}

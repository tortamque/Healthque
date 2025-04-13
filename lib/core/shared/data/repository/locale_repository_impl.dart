import 'dart:ui';

import 'package:healthque/core/shared/shared.dart';

class LocaleRepositoryImpl implements LocaleRepository {
  final LocaleDbService dbService;
  LocaleRepositoryImpl(this.dbService);

  @override
  Future<void> saveLocale(Locale locale) => dbService.saveLocale(locale);

  @override
  Locale? getLocale() => dbService.getLocale();
}

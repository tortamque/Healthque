import 'dart:ui';

abstract class LocaleRepository {
  Future<void> saveLocale(Locale locale);
  Locale? getLocale();
}

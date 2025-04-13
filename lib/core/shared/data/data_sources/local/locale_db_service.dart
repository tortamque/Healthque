import 'package:flutter/material.dart';
import 'package:healthque/core/utils/utils.dart';

abstract class LocaleDbService {
  Future<void> saveLocale(Locale locale);
  Locale? getLocale();
}

class LocaleDbServiceImpl implements LocaleDbService {
  final LocaleHiveManager localeHiveManager;
  LocaleDbServiceImpl(this.localeHiveManager);

  @override
  Future<void> saveLocale(Locale locale) async {
    final localeString = _localeToString(locale);
    await localeHiveManager.localeBox.put(localeHiveManager.hiveKey, localeString);
  }

  @override
  Locale? getLocale() {
    final localeString = localeHiveManager.localeBox.get(localeHiveManager.hiveKey);
    if (localeString == null) return null;
    return _localeFromString(localeString);
  }

  String _localeToString(Locale locale) {
    if (locale.countryCode != null && locale.countryCode!.isNotEmpty) {
      return '${locale.languageCode}_${locale.countryCode}';
    }
    return locale.languageCode;
  }

  Locale _localeFromString(String s) {
    final parts = s.split('_');
    if (parts.length == 1) return Locale(parts[0]);
    return Locale(parts[0], parts[1]);
  }
}

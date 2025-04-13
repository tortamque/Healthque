import 'package:hive_flutter/hive_flutter.dart';

class LocaleHiveManager {
  late Box<String> localeBox;

  String get hiveKey => 'appLocale';

  Future<void> init() async {
    localeBox = await Hive.openBox<String>('localeBox');
  }
}

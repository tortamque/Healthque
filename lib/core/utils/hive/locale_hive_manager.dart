import 'package:healthque/core/utils/hive/hive_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocaleHiveManager implements HiveManager<String> {
  @override
  late Box<String> box;

  @override
  String get hiveKey => 'appLocale';

  @override
  Future<void> init() async {
    box = await Hive.openBox<String>('localeBox');
  }
}

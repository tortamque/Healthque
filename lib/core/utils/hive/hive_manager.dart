import 'package:hive_flutter/hive_flutter.dart';

abstract class HiveManager<T> {
  late Box<T> box;

  String get hiveKey;

  Future<void> init();
}

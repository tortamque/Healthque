import 'package:healthque/core/utils/hive/hive_manager.dart';
import 'package:healthque/features/health/health.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CourseTreatmentHiveManager implements HiveManager<CourseTreatments> {
  @override
  late Box<CourseTreatments> box;
  @override
  String get hiveKey => 'course_treatments';

  @override
  Future<void> init() async {
    box = await Hive.openBox<CourseTreatments>(hiveKey);
  }
}

import 'package:healthque/core/utils/hive/hive.dart';
import 'package:healthque/features/health/health.dart';

abstract class CourseTreatmentDbService {
  CourseTreatments? getCourses();
  Future<void> saveCourses(CourseTreatments courses);
  Future<void> deleteCourse(CourseTreatment course);
}

class CourseTreatmentDbServiceImpl implements CourseTreatmentDbService {
  final HiveManager _manager;
  CourseTreatmentDbServiceImpl(this._manager);

  @override
  CourseTreatments? getCourses() => _manager.box.get(_manager.hiveKey);

  @override
  Future<void> saveCourses(CourseTreatments courses) => _manager.box.put(_manager.hiveKey, courses);

  @override
  Future<void> deleteCourse(CourseTreatment course) async {
    final current = getCourses();
    if (current != null) {
      final updatedList = List<CourseTreatment>.from(current.courses)..removeWhere((c) => c.id == course.id);
      final updatedCourses = CourseTreatments(courses: updatedList);
      await saveCourses(updatedCourses);
    }
  }
}

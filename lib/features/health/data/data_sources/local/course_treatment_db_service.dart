import 'package:healthque/core/utils/hive/course_treatment_hive_manager.dart';
import 'package:healthque/features/health/health.dart';

abstract class CourseTreatmentDbService {
  CourseTreatments? getCourses();
  Future<void> saveCourses(CourseTreatments courses);
  Future<void> deleteCourse(CourseTreatment course);
}

class CourseTreatmentDbServiceImpl implements CourseTreatmentDbService {
  final CourseTreatmentHiveManager _manager;
  CourseTreatmentDbServiceImpl(this._manager);

  @override
  CourseTreatments? getCourses() => _manager.courseTreatmentsBox.get(_manager.hiveKey);

  @override
  Future<void> saveCourses(CourseTreatments courses) => _manager.courseTreatmentsBox.put(_manager.hiveKey, courses);

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

import 'package:healthque/features/health/health.dart';

abstract class CourseTreatmentRepository {
  CourseTreatments? getCourses();
  Future<void> saveCourses(CourseTreatments courses);
  Future<void> deleteCourse(CourseTreatment course);
}

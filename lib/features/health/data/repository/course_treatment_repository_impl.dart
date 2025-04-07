import 'package:healthque/features/health/health.dart';

class CourseTreatmentRepositoryImpl implements CourseTreatmentRepository {
  final CourseTreatmentDbService _dbService;
  CourseTreatmentRepositoryImpl(this._dbService);

  @override
  CourseTreatments? getCourses() => _dbService.getCourses();

  @override
  Future<void> saveCourses(CourseTreatments courses) => _dbService.saveCourses(courses);

  @override
  Future<void> deleteCourse(CourseTreatment course) => _dbService.deleteCourse(course);
}

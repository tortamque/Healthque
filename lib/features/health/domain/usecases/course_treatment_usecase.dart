import 'package:healthque/core/usecases/usecase.dart';
import 'package:healthque/features/health/health.dart';

class GetCourseTreatmentsUseCase implements UseCase<CourseTreatments?, void> {
  final CourseTreatmentRepository repository;
  GetCourseTreatmentsUseCase(this.repository);
  @override
  CourseTreatments? call(void params) => repository.getCourses();
}

class SaveCourseTreatmentsUseCase implements AsyncUseCase<void, CourseTreatments> {
  final CourseTreatmentRepository repository;
  SaveCourseTreatmentsUseCase(this.repository);
  @override
  Future<void> call(CourseTreatments params) => repository.saveCourses(params);
}

class DeleteCourseTreatmentUseCase implements AsyncUseCase<void, CourseTreatment> {
  final CourseTreatmentRepository repository;
  DeleteCourseTreatmentUseCase(this.repository);
  @override
  Future<void> call(CourseTreatment params) => repository.deleteCourse(params);
}

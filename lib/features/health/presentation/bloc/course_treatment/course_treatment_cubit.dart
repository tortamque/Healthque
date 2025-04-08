import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/features/health/health.dart';

part 'course_treatment_state.dart';
part 'course_treatment_cubit.freezed.dart';

class CourseTreatmentCubit extends Cubit<CourseTreatmentState> {
  CourseTreatmentCubit(
    this._getCoursesUseCase,
    this._saveCoursesUseCase,
    this._deleteCourseUseCase,
  ) : super(const CourseTreatmentState());

  final GetCourseTreatmentsUseCase _getCoursesUseCase;
  final SaveCourseTreatmentsUseCase _saveCoursesUseCase;
  final DeleteCourseTreatmentUseCase _deleteCourseUseCase;

  void fetchCourses() {
    final courses = _getCoursesUseCase.call(null) ?? CourseTreatments(courses: []);
    emit(CourseTreatmentState(courses: courses, isLoading: false));
  }

  Future<void> addCourse({
    required List<CourseTreatmentEntry> entries,
    required DateTime courseStart,
    required DateTime courseEnd,
    required DateTime medicationTime,
    required DateTimeComponents repeatInterval,
  }) async {
    final currentCourses = _getCoursesUseCase.call(null) ?? CourseTreatments(courses: []);
    final int newId = currentCourses.courses.length + 1;
    final newCourse = CourseTreatment(
      id: newId,
      entries: entries,
      courseStart: courseStart,
      courseEnd: courseEnd,
      medicationTime: medicationTime,
      repeatInterval: repeatInterval,
    );
    final updatedCourses = currentCourses.copyWith(
      courses: List.from(currentCourses.courses)..add(newCourse),
    );
    await _saveCoursesUseCase.call(updatedCourses);
    emit(CourseTreatmentState(courses: updatedCourses, isLoading: false));
  }

  Future<void> deleteCourse(CourseTreatment course) async {
    await _deleteCourseUseCase.call(course);
    final updatedCourses = _getCoursesUseCase.call(null) ?? CourseTreatments(courses: []);
    emit(CourseTreatmentState(courses: updatedCourses, isLoading: false));
  }
}

part of 'course_treatment_cubit.dart';

@freezed
sealed class CourseTreatmentState with _$CourseTreatmentState {
  const factory CourseTreatmentState({
    @Default(CourseTreatments(courses: [])) CourseTreatments courses,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _CourseTreatmentState;
}

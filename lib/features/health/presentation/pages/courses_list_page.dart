import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';
import 'package:toastification/toastification.dart';

class CoursesListPage extends StatefulWidget {
  const CoursesListPage({super.key});

  @override
  State<CoursesListPage> createState() => _CoursesListPageState();
}

class _CoursesListPageState extends State<CoursesListPage> {
  @override
  Widget build(BuildContext context) {
    context.read<CourseTreatmentCubit>().fetchCourses();
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.courseTreatments),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(Routes.addCourseTreatment).then((_) {
          if (!context.mounted) return;
          context.read<CourseTreatmentCubit>().fetchCourses();
        }),
        child: Icon(Icons.add_rounded),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<CourseTreatmentCubit, CourseTreatmentState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            final courses = state.courses.courses;

            if (courses.isEmpty) {
              return Center(
                child: Text(
                  context.strings.noCourses,
                  style: context.textTheme.bodyLarge,
                ),
              );
            }
            return ListView.separated(
              itemCount: courses.length,
              separatorBuilder: (_, __) => const Gap(12),
              itemBuilder: (context, index) {
                final course = courses[index];
                return CourseTreatmentCard(
                  course: course,
                  onDelete: () async {
                    await context.read<CourseTreatmentCubit>().deleteCourse(course);

                    if (!context.mounted) return;
                    toastification.show(
                      context: context,
                      style: ToastificationStyle.simple,
                      type: ToastificationType.error,
                      title: Text(context.strings.courseDeleted),
                      alignment: Alignment.bottomCenter,
                      closeButton: ToastCloseButton(
                        buttonBuilder: (context, onClose) => const SizedBox.shrink(),
                      ),
                      autoCloseDuration: const Duration(seconds: 3),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}

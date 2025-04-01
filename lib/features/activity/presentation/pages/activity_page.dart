import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/activity/activity.dart';
import 'package:healthque/features/health/health.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.activity),
        actions: [
          IconButton(
            icon: Icon(Icons.bookmark_rounded),
            onPressed: () => context.push(Routes.savedWorkoutsPage),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(Routes.addWorkoutPage),
        tooltip: context.strings.addANewWorkout,
        child: Icon(Icons.add_rounded),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: BlocBuilder<HealthCubit, HealthState>(
            builder: (context, state) {
              return switch (state) {
                HealthStateInitial() || HealthStateLoading() => const Center(
                    child: UnifiedCircularProgressIndicator(),
                  ),
                HealthStateError(:final message) => Center(child: Text(message)),
                HealthStateLoaded(
                  :final workout,
                ) =>
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          context.strings.activityAnalysisText,
                          style: context.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.normal),
                        ),
                      ),
                      Gap(16),
                      ChartWrapperCard(
                        icon: Icons.fitness_center_rounded,
                        title: context.strings.workoutsAmount,
                        innerPadding: const EdgeInsets.only(left: 10),
                        child: WorkoutsAmountPieChart(workoutRecords: workout),
                      ),
                      Gap(8),
                      ChartWrapperCard(
                        icon: Icons.local_fire_department_rounded,
                        title: context.strings.caloriesBurnedDuringWorkouts,
                        innerPadding: const EdgeInsets.only(left: 10),
                        child: WorkoutCaloriesBurnedLineChart(
                          workoutRecords: workout,
                        ),
                      ),
                      Gap(8),
                      ChartWrapperCard(
                        icon: Icons.assessment_rounded,
                        title: context.strings.amountOfEachWorkoutType,
                        innerPadding: const EdgeInsets.only(left: 10),
                        child: WorkoutTypeBarChart(
                          workoutRecords: workout,
                        ),
                      ),
                      Gap(32),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          context.strings.allYourActivitiesText,
                          style: context.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.normal),
                        ),
                      ),
                      Gap(16),
                      Column(
                        children: workout.map((record) => WorkoutCard(record: record)).toList(),
                      ),
                    ],
                  )
              };
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/activity/activity.dart';

class SavedWorkoutsPage extends StatelessWidget {
  const SavedWorkoutsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.strings.savedWorkouts)),
      body: BlocBuilder<ActivityCubit, ActivityState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: UnifiedCircularProgressIndicator());
          }

          if (state.errorMessage != null) {
            return Center(
              child: Text(
                state.errorMessage ?? context.strings.oopsSomethingWentWrong,
              ),
            );
          }

          final sortedWorkouts = List<Workout>.from(state.workouts.workouts)
            ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

          if (sortedWorkouts.isEmpty) {
            return Center(child: Text(context.strings.noSavedWorkoutsYet));
          }

          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: sortedWorkouts.length,
            itemBuilder: (context, index) {
              final workout = sortedWorkouts[index];

              return Card(
                elevation: 4,
                margin: const EdgeInsets.all(12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () => context.push(Routes.workoutDetailsPage, extra: workout),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 12,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          workout.workoutType.displayName(context),
                          style: context.theme.textTheme.titleMedium,
                        ),
                        Gap(8),
                        Text(
                            '${context.strings.duration}: ${context.strings.minutesAmountLong(workout.durationMinutes)}'),
                        Gap(8),
                        Text("${context.strings.trainingEvaluation}:"),
                        Gap(8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(
                            5,
                            (starIndex) => StarWidget(
                              starIndex: starIndex,
                              currentRating: workout.moodRating,
                              onRatingChanged: (_) {},
                              filledColor: context.theme.colorScheme.primary,
                              unfilledColor: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

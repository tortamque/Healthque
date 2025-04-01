import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/activity/activity.dart';
import 'package:intl/intl.dart';

class SavedWorkoutDetailsPage extends StatelessWidget {
  const SavedWorkoutDetailsPage({super.key, required this.workout});

  final Workout workout;

  @override
  Widget build(BuildContext context) {
    final double intensityPercentage = workout.intensity / 10;

    final int hours = workout.durationMinutes ~/ 60;
    final int minutes = workout.durationMinutes % 60;
    final String formattedDuration = '${hours}h ${minutes}m';

    return Scaffold(
      appBar: AppBar(title: Text(context.strings.workoutDetails)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  workout.workoutType.displayName(context),
                  style: context.theme.textTheme.headlineSmall,
                ),
                Gap(16),
                Text('${context.strings.duration}: $formattedDuration'),
                Gap(16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('${context.strings.intensity}: '),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          value: intensityPercentage,
                          minHeight: 12,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            context.theme.colorScheme.primary,
                          ),
                          backgroundColor: Colors.grey[300],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      workout.intensity.toString(),
                      style: context.theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
                Gap(16),
                if (workout.distance != null)
                  Text('${context.strings.distance}: ${context.strings.amountKm(workout.distance!)}'),
                Gap(16),
                if (workout.tags != null && workout.tags!.isNotEmpty)
                  Text('${context.strings.tags}: ${workout.tags!.join(', ')}'),
                Gap(16),
                Text('${context.strings.favorite}: ${workout.isFavorite ? context.strings.yes : context.strings.no}'),
                Gap(16),
                Text('${context.strings.trainingEvaluation}: '),
                Row(
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
                Gap(16),
                if (workout.notes.isNotEmpty) ...[Text('${context.strings.notes}: ${workout.notes}'), Gap(16)],
                Text(
                  '${context.strings.createdAt}: ${DateFormat('dd.MM.yyyy HH:mm').format(workout.createdAt)}',
                  style: context.theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/extensions/date_time_components.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';

class CourseTreatmentCard extends StatelessWidget {
  final CourseTreatment course;
  final VoidCallback? onDelete;

  const CourseTreatmentCard({super.key, required this.course, this.onDelete});

  @override
  Widget build(BuildContext context) {
    final startDate = DateFormat('dd.MM.yyyy').format(course.courseStart);
    final endDate = DateFormat('dd.MM.yyyy').format(course.courseEnd);
    final medicationTime = TimeOfDay.fromDateTime(course.medicationTime).format(context);
    final drugsDescription = course.entries
        .map((e) => '${e.medicationType.displayName(context)} (${e.dosage} ${e.medicationType.defaultUnit(context)})')
        .join(', ');
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.strings.courseTreatment,
                  style: context.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                if (onDelete != null)
                  IconButton(
                    onPressed: onDelete,
                    icon: const Icon(Icons.delete),
                    color: context.theme.colorScheme.primary,
                  ),
              ],
            ),
            const Gap(8),
            Text(
              '${context.strings.courseDuration}: $startDate - $endDate',
              style: context.textTheme.bodyLarge,
            ),
            const Gap(4),
            Text(
              '${context.strings.medicationTime}: $medicationTime',
              style: context.textTheme.bodyLarge,
            ),
            const Gap(4),
            Text(
              '${context.strings.repeatInterval}: ${course.repeatInterval.translate(context)}',
              style: context.textTheme.bodyLarge,
            ),
            const Gap(8),
            Text(
              '${context.strings.drugs}: $drugsDescription',
              style: context.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

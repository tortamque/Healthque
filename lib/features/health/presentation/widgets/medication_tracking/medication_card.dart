import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';
import 'package:healthque/core/extensions/context.dart';

class MedicationCard extends StatelessWidget {
  final Medication medication;
  final VoidCallback? onDelete;

  const MedicationCard({
    super.key,
    required this.medication,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final String createdDate = DateFormat('dd.MM.yyyy HH:mm').format(medication.createdAt);
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  medication.type.displayName(context),
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
              '${context.strings.dosage}: ${medication.dosage} ${medication.type.defaultUnit(context)}',
              style: context.textTheme.bodyLarge,
            ),
            const Gap(4),
            Text(
              '${context.strings.courseOfTreatment}: ${medication.course}',
              style: context.textTheme.bodyLarge,
            ),
            if (medication.notes != null && medication.notes!.isNotEmpty) ...[
              const Gap(8),
              Text(
                '${context.strings.notes}: ${medication.notes}',
                style: context.textTheme.bodyLarge,
              ),
            ],
            const Gap(8),
            Text(
              '${context.strings.addedOn}: $createdDate',
              style: context.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}

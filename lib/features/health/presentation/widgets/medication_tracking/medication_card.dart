import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';
import 'package:healthque/core/extensions/context.dart';

class MedicationCard extends StatelessWidget {
  final Medication medication;

  const MedicationCard({super.key, required this.medication});

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
            Text(
              medication.type.displayName(context),
              style: context.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Gap(8),
            Text(
              '${context.strings.dosage}: ${medication.dosage} ${medication.type.defaultUnit}',
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/string.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:intl/intl.dart';
import 'package:toastification/toastification.dart';
import 'package:healthque/core/extensions/context.dart';

class WorkoutReminderCard extends StatelessWidget {
  const WorkoutReminderCard({super.key, required this.reminder});

  final LocalNotification reminder;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    reminder.title,
                    style: context.textTheme.titleLarge,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  color: context.theme.colorScheme.primary,
                  onPressed: () async {
                    await context.read<RemindersCubit>().deleteReminder(reminder.id);

                    if (!context.mounted) return;
                    toastification.show(
                      context: context,
                      style: ToastificationStyle.simple,
                      type: ToastificationType.success,
                      title: Text(context.strings.reminderDeleted),
                      alignment: Alignment.bottomCenter,
                      closeButton: ToastCloseButton(
                        buttonBuilder: (context, onClose) => const SizedBox.shrink(),
                      ),
                      autoCloseDuration: const Duration(seconds: 3),
                    );
                  },
                ),
              ],
            ),
            const Gap(8),
            Text(
              reminder.body,
              style: context.textTheme.bodyLarge,
            ),
            const Gap(8),
            Text(
              '${context.strings.scheduledAt}: ${DateFormat('dd.MM.yyyy HH:mm').format(reminder.scheduledDate)}',
              style: context.textTheme.bodySmall,
            ),
            const Gap(8),
            Text(
              '${context.strings.reminderType}: ${reminder.type.name.capitalizeFirstofEach}',
              style: context.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}

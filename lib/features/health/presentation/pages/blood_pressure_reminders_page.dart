import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';
import 'package:toastification/toastification.dart';
import 'package:healthque/core/extensions/context.dart';

class BloodPressureRemindersPage extends StatelessWidget {
  const BloodPressureRemindersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.bloodPressureReminders),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const BloodPressureReminderCard(),
            const Gap(16),
            Expanded(
              child: BlocBuilder<RemindersCubit, RemindersState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final notifications = state.bloodPressureNotifications;

                  if (notifications.isEmpty) {
                    return Center(child: Text(context.strings.noNotifications));
                  }
                  return ListView.separated(
                    itemCount: notifications.length,
                    separatorBuilder: (_, __) => const Gap(12),
                    itemBuilder: (context, index) {
                      final notification = notifications[index];
                      final timeString = DateFormat.Hm().format(notification.scheduledDate);
                      return Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          title: Text(notification.title),
                          subtitle: Text('${context.strings.scheduledTime}: $timeString'),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            color: context.theme.colorScheme.primary,
                            onPressed: () async {
                              await context.read<RemindersCubit>().deleteReminder(notification.id);

                              if (!context.mounted) return;
                              toastification.show(
                                context: context,
                                style: ToastificationStyle.simple,
                                type: ToastificationType.success,
                                title: Text(context.strings.notificationDeleted),
                                alignment: Alignment.bottomCenter,
                                closeButton: ToastCloseButton(
                                  buttonBuilder: (context, onClose) => const SizedBox.shrink(),
                                ),
                                autoCloseDuration: const Duration(seconds: 3),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

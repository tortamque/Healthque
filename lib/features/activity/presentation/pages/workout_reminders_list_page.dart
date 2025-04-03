import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/activity/activity.dart';
import 'package:healthque/core/extensions/context.dart';

class WorkoutRemindersListPage extends StatefulWidget {
  const WorkoutRemindersListPage({super.key});

  @override
  State<WorkoutRemindersListPage> createState() => _WorkoutRemindersListPageState();
}

class _WorkoutRemindersListPageState extends State<WorkoutRemindersListPage> {
  @override
  void initState() {
    super.initState();
    context.read<RemindersCubit>().fetchNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.strings.yourReminders,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(Routes.workoutReminderPage),
        child: Icon(Icons.add_rounded),
      ),
      body: BlocBuilder<RemindersCubit, RemindersState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          final reminders = state.workoutNotifications as List<LocalNotification>;
          if (reminders.isEmpty) {
            return Center(
              child: Text(
                context.strings.noReminders,
                style: context.textTheme.bodyLarge,
              ),
            );
          }
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: reminders.length,
            itemBuilder: (context, index) {
              final reminder = reminders[index];

              return WorkoutReminderCard(reminder: reminder);
            },
          );
        },
      ),
    );
  }
}

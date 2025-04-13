import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:toastification/toastification.dart';
import 'package:healthque/core/extensions/context.dart';

class BloodSugarReminderCard extends StatelessWidget {
  const BloodSugarReminderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: BloodSugarReminderForm(),
      ),
    );
  }
}

class BloodSugarReminderForm extends StatefulWidget {
  const BloodSugarReminderForm({super.key});

  @override
  State<BloodSugarReminderForm> createState() => _BloodSugarReminderFormState();
}

class _BloodSugarReminderFormState extends State<BloodSugarReminderForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            context.strings.addNotification,
            style: context.textTheme.titleMedium,
          ),
          const Gap(12),
          TextFormField(
            controller: _titleController,
            decoration: InputDecoration(
              labelText: context.strings.reminderTitle,
            ),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return context.strings.fieldCannotBeEmpty;
              }
              return null;
            },
          ),
          const Gap(12),
          TextFormField(
            controller: _bodyController,
            decoration: InputDecoration(
              labelText: context.strings.reminderBody,
            ),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return context.strings.fieldCannotBeEmpty;
              }
              return null;
            },
          ),
          const Gap(12),
          OutlinedButton(
            onPressed: _pickTime,
            child: Text(
              _selectedTime != null ? _selectedTime!.format(context) : context.strings.selectTime,
            ),
          ),
          const Gap(12),
          ElevatedButton(
            onPressed: _saveNotification,
            child: Text(context.strings.saveNotification),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  Future<void> _pickTime() async {
    final now = TimeOfDay.now();
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: now,
    );
    if (pickedTime != null) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }

  Future<void> _saveNotification() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    if (_selectedTime == null) {
      toastification.show(
        context: context,
        style: ToastificationStyle.simple,
        type: ToastificationType.error,
        title: Text(context.strings.selectTimeValidation),
        alignment: Alignment.bottomCenter,
        closeButton: ToastCloseButton(
          buttonBuilder: (context, onClose) => const SizedBox.shrink(),
        ),
        autoCloseDuration: const Duration(seconds: 3),
      );
      return;
    }

    final now = DateTime.now();
    DateTime scheduledDateTime = DateTime(
      now.year,
      now.month,
      now.day,
      _selectedTime!.hour,
      _selectedTime!.minute,
    );

    if (scheduledDateTime.isBefore(now)) {
      scheduledDateTime = scheduledDateTime.add(const Duration(days: 1));
    }

    await context.read<RemindersCubit>().scheduleReminder(
          scheduledDateTime: scheduledDateTime,
          title: _titleController.text,
          body: _bodyController.text,
          matchDateTimeComponents: DateTimeComponents.dateAndTime,
          type: LocalNotificationType.bloodSugar,
        );

    if (!mounted) return;
    toastification.show(
      context: context,
      style: ToastificationStyle.simple,
      type: ToastificationType.success,
      title: Text(context.strings.notificationAdded),
      alignment: Alignment.bottomCenter,
      closeButton: ToastCloseButton(
        buttonBuilder: (context, onClose) => const SizedBox.shrink(),
      ),
      autoCloseDuration: const Duration(seconds: 3),
    );

    setState(() {
      _selectedTime = null;
      _titleController.clear();
      _bodyController.clear();
    });
  }
}

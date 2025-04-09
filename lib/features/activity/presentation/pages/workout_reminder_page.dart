import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:intl/intl.dart';
import 'package:toastification/toastification.dart';

class WorkoutReminderPage extends StatefulWidget {
  const WorkoutReminderPage({super.key});

  @override
  State<WorkoutReminderPage> createState() => _WorkoutReminderPageState();
}

class _WorkoutReminderPageState extends State<WorkoutReminderPage> {
  final _formKey = GlobalKey<FormState>();
  WorkoutType? _selectedWorkoutType;
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.strings.configureWorkoutReminder,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              DropdownButtonFormField<WorkoutType>(
                decoration: InputDecoration(
                  labelText: context.strings.workoutType,
                  labelStyle: context.textTheme.bodyLarge,
                ),
                items: WorkoutType.values.map((workoutType) {
                  return DropdownMenuItem<WorkoutType>(
                    value: workoutType,
                    child: Text(
                      workoutType.displayName(context),
                      style: context.textTheme.bodyLarge,
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedWorkoutType = value;
                  });
                },
                validator: (value) => value == null ? context.strings.workoutTypeValidationMessage : null,
              ),
              const Gap(16),
              TextFormField(
                controller: _dateController,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: context.strings.selectDate,
                  labelStyle: context.textTheme.bodyLarge,
                  suffixIcon: Icon(
                    Icons.calendar_today,
                    color: context.theme.primaryColor,
                  ),
                ),
                onTap: () async {
                  final now = DateTime.now();
                  final DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: now,
                    firstDate: now,
                    lastDate: now.add(const Duration(days: 365)),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      _selectedDate = pickedDate;
                      _dateController.text = DateFormat('dd.MM.yyyy').format(pickedDate);
                    });
                  }
                },
                validator: (value) => _selectedDate == null ? context.strings.dateValidationMessage : null,
              ),
              const Gap(16),
              TextFormField(
                controller: _timeController,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: context.strings.selectTime,
                  labelStyle: context.textTheme.bodyLarge,
                  suffixIcon: Icon(
                    Icons.access_time,
                    color: context.theme.primaryColor,
                  ),
                ),
                onTap: () async {
                  final TimeOfDay now = TimeOfDay.now();
                  final TimeOfDay? pickedTime = await showTimePicker(
                    context: context,
                    initialTime: now,
                  );
                  if (pickedTime != null) {
                    setState(() {
                      _selectedTime = pickedTime;
                      _timeController.text = pickedTime.format(context);
                    });
                  }
                },
                validator: (value) => _selectedTime == null ? context.strings.timeValidationMessage : null,
              ),
              const Gap(16),
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: context.strings.reminderTitleOptional,
                  labelStyle: context.textTheme.bodyLarge,
                ),
              ),
              const Gap(16),
              TextFormField(
                controller: _bodyController,
                decoration: InputDecoration(
                  labelText: context.strings.reminderBodyOptional,
                  labelStyle: context.textTheme.bodyLarge,
                ),
              ),
              const Gap(24),
              FilledButton(
                onPressed: _saveReminder,
                child: Text(
                  context.strings.saveReminder,
                  style: context.textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _saveReminder() async {
    if (!_formKey.currentState!.validate()) return;

    final String title = _titleController.text.isNotEmpty
        ? _titleController.text
        : "${_selectedWorkoutType!.displayName(context)} ${context.strings.defaultWorkoutReminderTitle}";
    final String body = _bodyController.text.isNotEmpty
        ? _bodyController.text
        : context.strings.defaultWorkoutReminderBody(_selectedWorkoutType?.displayName(context).toLowerCase() ?? '');

    final DateTime scheduledDateTime = DateTime(
      _selectedDate!.year,
      _selectedDate!.month,
      _selectedDate!.day,
      _selectedTime!.hour,
      _selectedTime!.minute,
    );

    await context.read<RemindersCubit>().scheduleReminder(
          scheduledDateTime: scheduledDateTime,
          title: title,
          body: body,
          type: LocalNotificationType.workout,
        );

    if (!mounted) return;

    toastification.show(
      context: context,
      style: ToastificationStyle.simple,
      type: ToastificationType.success,
      title: Text(context.strings.workoutSaved),
      alignment: Alignment.bottomCenter,
      closeButton: ToastCloseButton(
        buttonBuilder: (context, onClose) => const SizedBox.shrink(),
      ),
      autoCloseDuration: const Duration(seconds: 3),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
    _dateController.dispose();
    _timeController.dispose();
    super.dispose();
  }
}

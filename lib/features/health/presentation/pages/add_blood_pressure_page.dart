import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';
import 'package:toastification/toastification.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/core/extensions/context.dart';

class AddBloodPressurePage extends StatelessWidget {
  const AddBloodPressurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<BloodPressureTrackingCubit, BloodPressureTrackingState>(
      listener: (context, state) async {
        if (state.isHighBloodPressure) {
          await context.read<RemindersCubit>().scheduleReminder(
                scheduledDateTime: DateTime.now().add(const Duration(hours: 1)),
                title: context.strings.recheckBloodPressure,
                body: context.strings.recheckBloodPressureDesc,
                matchDateTimeComponents: DateTimeComponents.dateAndTime,
                type: LocalNotificationType.bloodPressure,
              );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.strings.addBloodPressureMeasurement),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: const BloodPressureEntryCard(),
        ),
      ),
    );
  }
}

class BloodPressureEntryCard extends StatelessWidget {
  const BloodPressureEntryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: const BloodPressureEntryForm(),
      ),
    );
  }
}

class BloodPressureEntryForm extends StatefulWidget {
  const BloodPressureEntryForm({super.key});

  @override
  State<BloodPressureEntryForm> createState() => _BloodPressureEntryFormState();
}

class _BloodPressureEntryFormState extends State<BloodPressureEntryForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _systolicController = TextEditingController();
  final TextEditingController _diastolicController = TextEditingController();

  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            context.strings.addBloodPressureMeasurement,
            style: context.textTheme.titleMedium,
          ),
          const Gap(12),
          TextFormField(
            controller: _systolicController,
            decoration: InputDecoration(
              labelText: context.strings.systolic,
              hintText: context.strings.egAmount(120),
            ),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return context.strings.fieldCannotBeEmpty;
              }
              if (int.tryParse(value) == null) {
                return context.strings.invalidNumber;
              }
              return null;
            },
          ),
          const Gap(12),
          TextFormField(
            controller: _diastolicController,
            decoration: InputDecoration(
              labelText: context.strings.diastolic,
              hintText: context.strings.egAmount(80),
            ),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return context.strings.fieldCannotBeEmpty;
              }
              if (int.tryParse(value) == null) {
                return context.strings.invalidNumber;
              }
              return null;
            },
          ),
          const Gap(12),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: _pickDate,
                  child: Text(
                    _selectedDate != null
                        ? DateFormat('dd.MM.yyyy').format(_selectedDate!)
                        : context.strings.selectDate,
                  ),
                ),
              ),
              const Gap(12),
              Expanded(
                child: OutlinedButton(
                  onPressed: _pickTime,
                  child: Text(
                    _selectedTime != null ? _selectedTime!.format(context) : context.strings.selectTime,
                  ),
                ),
              ),
            ],
          ),
          const Gap(12),
          ElevatedButton(
            onPressed: _submitBloodPressure,
            child: Text(context.strings.saveMeasurement),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _systolicController.dispose();
    _diastolicController.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? now,
      firstDate: now.subtract(const Duration(days: 365)),
      lastDate: now.add(const Duration(days: 365)),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _pickTime() async {
    final now = TimeOfDay.now();
    final picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? now,
    );
    if (picked != null) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  Future<void> _submitBloodPressure() async {
    if (!_formKey.currentState!.validate()) return;
    DateTime measurementTime;
    bool triggerHighBloodPressureCheck = false;
    if (_selectedDate == null && _selectedTime == null) {
      measurementTime = DateTime.now();
      triggerHighBloodPressureCheck = true;
    } else if (_selectedDate == null || _selectedTime == null) {
      toastification.show(
        context: context,
        style: ToastificationStyle.simple,
        type: ToastificationType.error,
        title: Text(context.strings.selectDateTimeValidation),
        alignment: Alignment.bottomCenter,
        closeButton: ToastCloseButton(
          buttonBuilder: (context, onClose) => const SizedBox.shrink(),
        ),
        autoCloseDuration: const Duration(seconds: 3),
      );
      return;
    } else {
      measurementTime = DateTime(
        _selectedDate!.year,
        _selectedDate!.month,
        _selectedDate!.day,
        _selectedTime!.hour,
        _selectedTime!.minute,
      );
    }
    final systolic = int.tryParse(_systolicController.text);
    final diastolic = int.tryParse(_diastolicController.text);
    if (systolic == null || diastolic == null) return;
    await context.read<BloodPressureTrackingCubit>().addBloodPressureRecord(
          systolic: systolic,
          diastolic: diastolic,
          measurementTime: measurementTime,
          triggerHighBloodPressureCheck: triggerHighBloodPressureCheck,
        );

    if (!mounted) return;

    toastification.show(
      context: context,
      style: ToastificationStyle.simple,
      type: ToastificationType.success,
      title: Text(context.strings.measurementAdded),
      alignment: Alignment.bottomCenter,
      closeButton: ToastCloseButton(
        buttonBuilder: (context, onClose) => const SizedBox.shrink(),
      ),
      autoCloseDuration: const Duration(seconds: 3),
    );

    setState(() {
      _systolicController.clear();
      _diastolicController.clear();
      _selectedDate = null;
      _selectedTime = null;
    });

    context.pop();
  }
}

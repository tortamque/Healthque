import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/core/extensions/int.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:toastification/toastification.dart';
import 'package:healthque/core/extensions/context.dart';

class StressMoodEntryCard extends StatelessWidget {
  const StressMoodEntryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: const StressMoodEntryForm(),
      ),
    );
  }
}

class StressMoodEntryForm extends StatefulWidget {
  const StressMoodEntryForm({super.key});

  @override
  State<StressMoodEntryForm> createState() => _StressMoodEntryFormState();
}

class _StressMoodEntryFormState extends State<StressMoodEntryForm> {
  final _formKey = GlobalKey<FormState>();

  double _stressValue = 5.0;

  int? _selectedMood;
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
            context.strings.addStressAndMoodMeasurement,
            style: context.textTheme.titleMedium,
          ),
          const Gap(12),
          SfSlider(
            min: 0,
            max: 10,
            interval: 1,
            stepSize: 1,
            showTicks: true,
            showLabels: true,
            enableTooltip: true,
            minorTicksPerInterval: 0,
            value: _stressValue,
            onChanged: (dynamic value) {
              setState(() {
                _stressValue = value as double;
              });
            },
          ),
          const Gap(12),
          Text(
            context.strings.selectMood,
            style: context.textTheme.bodyMedium,
          ),
          const Gap(12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(5, (index) {
              int moodValue = index + 1;
              return IconButton(
                onPressed: () {
                  setState(() {
                    _selectedMood = moodValue;
                  });
                },
                icon: Opacity(
                  opacity: _selectedMood == moodValue ? 1.0 : 0.5,
                  child: Text(
                    moodValue.toMood,
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
              );
            }),
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
            onPressed: _submitMeasurement,
            child: Text(context.strings.saveMeasurement),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? now,
      firstDate: now.subtract(const Duration(days: 365)),
      lastDate: now,
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

  Future<void> _submitMeasurement() async {
    if (!_formKey.currentState!.validate()) return;

    DateTime measurementTime;

    if (_selectedDate == null && _selectedTime == null) {
      measurementTime = DateTime.now();
    } else if (_selectedDate == null || _selectedTime == null) {
      toastification.show(
        context: context,
        style: ToastificationStyle.simple,
        type: ToastificationType.error,
        title: Text(context.strings.selectDateTimeValidation),
        alignment: Alignment.bottomCenter,
        closeButton: ToastCloseButton(buttonBuilder: (context, onClose) => const SizedBox.shrink()),
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

    final stress = _stressValue.toInt();

    if (_selectedMood == null) {
      toastification.show(
        context: context,
        style: ToastificationStyle.simple,
        type: ToastificationType.error,
        title: Text(context.strings.selectMoodValidation),
        alignment: Alignment.bottomCenter,
        closeButton: ToastCloseButton(buttonBuilder: (context, onClose) => const SizedBox.shrink()),
        autoCloseDuration: const Duration(seconds: 3),
      );
      return;
    }

    await context.read<StressMoodTrackingCubit>().addStressMoodRecord(
          stress: stress,
          mood: _selectedMood!,
          measurementTime: measurementTime,
        );

    if (!mounted) return;

    toastification.show(
      context: context,
      style: ToastificationStyle.simple,
      type: ToastificationType.success,
      title: Text(context.strings.measurementAdded),
      alignment: Alignment.bottomCenter,
      closeButton: ToastCloseButton(buttonBuilder: (context, onClose) => const SizedBox.shrink()),
      autoCloseDuration: const Duration(seconds: 3),
    );

    setState(() {
      _stressValue = 5.0;
      _selectedMood = null;
      _selectedDate = null;
      _selectedTime = null;
    });

    context.pop();
  }
}

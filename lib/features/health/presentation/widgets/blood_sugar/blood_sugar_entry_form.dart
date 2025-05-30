import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';
import 'package:toastification/toastification.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/core/extensions/context.dart';

class BloodSugarEntryForm extends StatefulWidget {
  const BloodSugarEntryForm({super.key});

  @override
  State<BloodSugarEntryForm> createState() => _BloodSugarEntryFormState();
}

class _BloodSugarEntryFormState extends State<BloodSugarEntryForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _sugarController = TextEditingController();
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.strings.addMeasurement,
            style: context.textTheme.titleMedium,
          ),
          const Gap(12),
          TextFormField(
            controller: _sugarController,
            decoration: InputDecoration(
              labelText: context.strings.bloodSugar,
              hintText: context.strings.egBloodSugar(120),
            ),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return context.strings.fieldCannotBeEmpty;
              }
              if (double.tryParse(value) == null) {
                return context.strings.invalidBloodSugar;
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
            onPressed: _submitMeasurement,
            child: Text(context.strings.saveMeasurement),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _sugarController.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? now,
      firstDate: now.subtract(const Duration(days: 365)),
      lastDate: now,
    );
    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  Future<void> _pickTime() async {
    final now = TimeOfDay.now();
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? now,
    );
    if (pickedTime != null) {
      setState(() {
        _selectedTime = pickedTime;
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
        title: Text(context.strings.selectTimeValidation),
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

    final sugar = double.tryParse(_sugarController.text);
    if (sugar == null) return;

    await context.read<BloodSugarTrackingCubit>().addBloodSugarRecord(
          glucose: sugar,
          measurementTime: measurementTime,
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
      _sugarController.clear();
      _selectedDate = null;
      _selectedTime = null;
    });

    context.pop();
  }
}

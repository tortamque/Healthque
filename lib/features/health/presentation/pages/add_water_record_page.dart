import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';
import 'package:toastification/toastification.dart';

class AddWaterRecordPage extends StatefulWidget {
  const AddWaterRecordPage({super.key});
  @override
  State<AddWaterRecordPage> createState() => _AddWaterRecordPageState();
}

class _AddWaterRecordPageState extends State<AddWaterRecordPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _amountController = TextEditingController();
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  final double _defaultAmount = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.addWaterRecord),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: _addDefaultRecord,
                  borderRadius: BorderRadius.circular(60),
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.theme.primaryColor,
                      boxShadow: [
                        BoxShadow(
                          color: context.theme.primaryColor.withOpacity(0.5),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        context.strings.amountMl(_defaultAmount),
                        style: context.textTheme.headlineSmall?.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(24),
              Text(
                context.strings.orEnterCustom,
                style: context.textTheme.headlineSmall,
              ),
              const Gap(16),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _amountController,
                      decoration: InputDecoration(
                        labelText: context.strings.amountMlInBraces(context.strings.waterAmount),
                      ),
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                      ],
                      validator: (value) =>
                          value == null || value.isEmpty ? context.strings.waterAmountValidation : null,
                    ),
                    const Gap(16),
                    OutlinedButton(
                      onPressed: _pickDate,
                      child: Text(
                        _selectedDate != null
                            ? DateFormat('dd.MM.yyyy').format(_selectedDate!)
                            : context.strings.selectDate,
                      ),
                    ),
                    const Gap(16),
                    OutlinedButton(
                      onPressed: _pickTime,
                      child: Text(
                        _selectedTime != null ? _selectedTime!.format(context) : context.strings.selectTime,
                      ),
                    ),
                    const Gap(16),
                    ElevatedButton(
                      onPressed: _addCustomRecord,
                      child: Text(context.strings.saveWaterRecord),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final selected = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now.subtract(const Duration(days: 365)),
      lastDate: now,
    );
    if (selected != null) {
      setState(() {
        _selectedDate = selected;
      });
    }
  }

  Future<void> _pickTime() async {
    final now = TimeOfDay.now();
    final selected = await showTimePicker(context: context, initialTime: now);
    if (selected != null) {
      setState(() {
        _selectedTime = selected;
      });
    }
  }

  Future<void> _addCustomRecord() async {
    if (_formKey.currentState!.validate()) {
      final double amountMl = double.parse(_amountController.text);
      final double amount = amountMl / 1000;

      DateTime recordDate;
      if (_selectedDate == null && _selectedTime == null) {
        recordDate = DateTime.now();
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
        recordDate = DateTime(
          _selectedDate!.year,
          _selectedDate!.month,
          _selectedDate!.day,
          _selectedTime!.hour,
          _selectedTime!.minute,
        );
      }
      await context.read<WaterTrackingCubit>().addWaterRecord(amount: amount, datetime: recordDate);

      if (!mounted) return;
      toastification.show(
        context: context,
        style: ToastificationStyle.simple,
        type: ToastificationType.success,
        title: Text(context.strings.waterRecordAdded),
        alignment: Alignment.bottomCenter,
        closeButton: ToastCloseButton(
          buttonBuilder: (context, onClose) => const SizedBox.shrink(),
        ),
        autoCloseDuration: const Duration(seconds: 3),
      );
      context.pop();
    }
  }

  Future<void> _addDefaultRecord() async {
    await context.read<WaterTrackingCubit>().addWaterRecord(amount: _defaultAmount / 1000.0, datetime: DateTime.now());

    if (!mounted) return;
    toastification.show(
      context: context,
      style: ToastificationStyle.simple,
      type: ToastificationType.success,
      title: Text(context.strings.waterRecordAdded),
      alignment: Alignment.bottomCenter,
      closeButton: ToastCloseButton(
        buttonBuilder: (context, onClose) => const SizedBox.shrink(),
      ),
      autoCloseDuration: const Duration(seconds: 3),
    );
    context.pop();
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }
}

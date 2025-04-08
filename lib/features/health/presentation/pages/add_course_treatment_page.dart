import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/extensions/date_time_components.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';
import 'package:toastification/toastification.dart';

class AddCourseTreatmentPage extends StatefulWidget {
  const AddCourseTreatmentPage({super.key});
  @override
  State<AddCourseTreatmentPage> createState() => _AddCourseTreatmentPageState();
}

class _AddCourseTreatmentPageState extends State<AddCourseTreatmentPage> {
  final _formKey = GlobalKey<FormState>();

  DateTime? _courseStart;
  DateTime? _courseEnd;
  TimeOfDay? _medicationTime;
  DateTimeComponents? _selectedRepeat;

  final List<CourseTreatmentEntry> _entries = [];

  final TextEditingController _drugNameController = TextEditingController();
  MedicationType? _selectedDrugType;
  final TextEditingController _drugDosageController = TextEditingController();
  final TextEditingController _drugNotesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.courseTreatment),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.strings.addCourse,
                  style: context.textTheme.headlineSmall,
                ),
                const Gap(16),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _pickCourseStart,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            _courseStart != null
                                ? DateFormat('dd.MM.yyyy').format(_courseStart!)
                                : context.strings.selectCourseStart,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const Gap(8),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _pickCourseEnd,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            _courseEnd != null
                                ? DateFormat('dd.MM.yyyy').format(_courseEnd!)
                                : context.strings.selectCourseEnd,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(16),
                SizedBox(
                  width: context.width,
                  child: OutlinedButton(
                    onPressed: _pickMedicationTime,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        _medicationTime != null
                            ? _medicationTime!.format(context)
                            : context.strings.selectMedicationTime,
                      ),
                    ),
                  ),
                ),
                const Gap(16),
                DropdownButtonFormField<DateTimeComponents>(
                  decoration: InputDecoration(
                    labelText: context.strings.repeatInterval,
                    labelStyle: context.textTheme.bodyLarge,
                  ),
                  items: DateTimeComponents.values.map((e) {
                    return DropdownMenuItem<DateTimeComponents>(
                      value: e,
                      child: Text(
                        e.translate(context),
                        style: context.textTheme.bodyMedium,
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedRepeat = value;
                    });
                  },
                  validator: (value) => value == null ? context.strings.repeatIntervalValidation : null,
                ),
                const Gap(16),
                Text(
                  context.strings.addDrugs,
                  style: context.textTheme.bodyLarge,
                ),
                const Gap(8),
                ElevatedButton(
                  onPressed: _addDrugEntry,
                  child: Text(context.strings.addDrug),
                ),
                const Gap(8),
                ..._entries.map((entry) {
                  return ListTile(
                    title: Text(
                      '${entry.name} - ${entry.medicationType.displayName(context)}',
                      style: context.textTheme.bodyLarge,
                    ),
                    subtitle: Text(
                      '${context.strings.dosage}: ${entry.dosage} ${entry.medicationType.defaultUnit(context)}'
                      '${entry.notes != null && entry.notes!.isNotEmpty ? "\n${context.strings.notes}: ${entry.notes}" : ""}',
                    ),
                  );
                }),
                const Gap(24),
                Center(
                  child: ElevatedButton(
                    onPressed: _saveCourse,
                    child: Text(context.strings.saveCourse),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _drugNameController.dispose();
    _drugDosageController.dispose();
    _drugNotesController.dispose();
    super.dispose();
  }

  Future<void> _pickCourseStart() async {
    final now = DateTime.now();
    final selected = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now,
      lastDate: now.add(const Duration(days: 365)),
    );
    if (selected != null) {
      setState(() {
        _courseStart = selected;
      });
    }
  }

  Future<void> _pickCourseEnd() async {
    final now = DateTime.now();
    final selected = await showDatePicker(
      context: context,
      initialDate: _courseStart ?? now,
      firstDate: _courseStart ?? now,
      lastDate: now.add(const Duration(days: 730)),
    );
    if (selected != null) {
      setState(() {
        _courseEnd = selected;
      });
    }
  }

  Future<void> _pickMedicationTime() async {
    final now = TimeOfDay.now();
    final selected = await showTimePicker(
      context: context,
      initialTime: now,
    );
    if (selected != null) {
      setState(() {
        _medicationTime = selected;
      });
    }
  }

  void _addDrugEntry() {
    showDialog(
      context: context,
      builder: (context) {
        return AddCourseDrugDialog(
          drugNameController: _drugNameController,
          drugDosageController: _drugDosageController,
          drugNotesController: _drugNotesController,
          onChanged: (value) => setState(() => _selectedDrugType = value),
          addOnPressed: () {
            if (_drugNameController.text.isNotEmpty &&
                _selectedDrugType != null &&
                _drugDosageController.text.isNotEmpty) {
              final entry = CourseTreatmentEntry(
                name: _drugNameController.text.trim(),
                medicationType: _selectedDrugType!,
                dosage: _drugDosageController.text.trim(),
                notes: _drugNotesController.text.trim(),
              );
              setState(() {
                _entries.add(entry);
                _selectedDrugType = null;
                _drugNameController.clear();
                _drugDosageController.clear();
                _drugNotesController.clear();
              });
              Navigator.of(context).pop();
            } else {
              toastification.show(
                context: context,
                style: ToastificationStyle.simple,
                type: ToastificationType.error,
                title: Text(context.strings.drugEntryValidation),
                alignment: Alignment.bottomCenter,
                closeButton: ToastCloseButton(
                  buttonBuilder: (context, onClose) => const SizedBox.shrink(),
                ),
                autoCloseDuration: const Duration(seconds: 3),
              );
            }
          },
        );
      },
    );
  }

  Future<void> _saveCourse() async {
    if (_courseStart == null) {
      toastification.show(
        context: context,
        style: ToastificationStyle.simple,
        type: ToastificationType.error,
        title: Text(context.strings.selectCourseStartValidation),
        alignment: Alignment.bottomCenter,
        closeButton: ToastCloseButton(
          buttonBuilder: (context, onClose) => const SizedBox.shrink(),
        ),
        autoCloseDuration: const Duration(seconds: 3),
      );
      return;
    }
    if (_courseEnd == null) {
      toastification.show(
        context: context,
        style: ToastificationStyle.simple,
        type: ToastificationType.error,
        title: Text(context.strings.selectCourseEndValidation),
        alignment: Alignment.bottomCenter,
        closeButton: ToastCloseButton(
          buttonBuilder: (context, onClose) => const SizedBox.shrink(),
        ),
        autoCloseDuration: const Duration(seconds: 3),
      );
      return;
    }
    if (_medicationTime == null) {
      toastification.show(
        context: context,
        style: ToastificationStyle.simple,
        type: ToastificationType.error,
        title: Text(context.strings.selectMedicationTimeValidation),
        alignment: Alignment.bottomCenter,
        closeButton: ToastCloseButton(
          buttonBuilder: (context, onClose) => const SizedBox.shrink(),
        ),
        autoCloseDuration: const Duration(seconds: 3),
      );
      return;
    }
    if (_entries.isEmpty) {
      toastification.show(
        context: context,
        style: ToastificationStyle.simple,
        type: ToastificationType.error,
        title: Text(context.strings.noDrugsValidation),
        alignment: Alignment.bottomCenter,
        closeButton: ToastCloseButton(
          buttonBuilder: (context, onClose) => const SizedBox.shrink(),
        ),
        autoCloseDuration: const Duration(seconds: 3),
      );
      return;
    }
    if (!_formKey.currentState!.validate() || _selectedRepeat == null) {
      toastification.show(
        context: context,
        style: ToastificationStyle.simple,
        type: ToastificationType.error,
        title: Text(context.strings.repeatIntervalValidation),
        alignment: Alignment.bottomCenter,
        closeButton: ToastCloseButton(
          buttonBuilder: (context, onClose) => const SizedBox.shrink(),
        ),
        autoCloseDuration: const Duration(seconds: 3),
      );
      return;
    }

    final medicationDateTime = DateTime(
      _courseStart!.year,
      _courseStart!.month,
      _courseStart!.day,
      _medicationTime!.hour,
      _medicationTime!.minute,
    );

    await context.read<CourseTreatmentCubit>().addCourse(
          entries: _entries,
          courseStart: _courseStart!,
          courseEnd: _courseEnd!,
          medicationTime: medicationDateTime,
          repeatInterval: _selectedRepeat!,
        );

    if (!mounted) return;
    final reminderTitle = context.strings.courseReminderTitle;
    final reminderBody = context.strings.courseReminderBody(
      _entries
          .map((e) =>
              '${e.name} (${e.medicationType.displayName(context)} - ${e.dosage} ${e.medicationType.defaultUnit(context)})')
          .join(', '),
    );
    await context.read<RemindersCubit>().scheduleReminder(
          scheduledDateTime: medicationDateTime,
          title: reminderTitle,
          body: reminderBody,
          matchDateTimeComponents: _selectedRepeat!,
        );

    if (!mounted) return;
    toastification.show(
      context: context,
      style: ToastificationStyle.simple,
      type: ToastificationType.success,
      title: Text(context.strings.courseAdded),
      alignment: Alignment.bottomCenter,
      closeButton: ToastCloseButton(
        buttonBuilder: (context, onClose) => const SizedBox.shrink(),
      ),
      autoCloseDuration: const Duration(seconds: 3),
    );
    context.pop(true);
  }
}

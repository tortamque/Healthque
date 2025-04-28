import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:toastification/toastification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:healthque/features/health/health.dart';
import 'package:healthque/core/extensions/context.dart';

class MedicationTrackingPage extends StatefulWidget {
  const MedicationTrackingPage({super.key});

  @override
  State<MedicationTrackingPage> createState() => _MedicationTrackingPageState();
}

class _MedicationTrackingPageState extends State<MedicationTrackingPage> {
  final _formKey = GlobalKey<FormState>();
  MedicationType? _selectedType;
  final TextEditingController _dosageController = TextEditingController();
  final TextEditingController _courseController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.medicationTracking),
        actions: [
          IconButton(
            onPressed: () => context.push(Routes.courseTreatmentList),
            icon: Icon(Icons.history_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          context.strings.addMedication,
                          style: context.textTheme.headlineSmall,
                          textAlign: TextAlign.center,
                        ),
                        const Gap(16),
                        DropdownButtonFormField<MedicationType>(
                          decoration: InputDecoration(
                            labelText: context.strings.medicationType,
                            labelStyle: context.textTheme.bodyLarge,
                          ),
                          items: MedicationType.values.map((type) {
                            return DropdownMenuItem<MedicationType>(
                              value: type,
                              child: Text(
                                type.displayName(context),
                                style: context.textTheme.bodyLarge,
                              ),
                            );
                          }).toList(),
                          onChanged: (value) => setState(() => _selectedType = value),
                          validator: (value) => value == null ? context.strings.medicationTypeValidation : null,
                        ),
                        const Gap(16),
                        TextFormField(
                          controller: _dosageController,
                          decoration: InputDecoration(
                            labelText: context.strings.dosage,
                            labelStyle: context.textTheme.bodyLarge,
                            suffixText: _selectedType?.defaultUnit(context) ?? '',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          validator: (value) =>
                              value == null || value.isEmpty ? context.strings.dosageValidation : null,
                        ),
                        const Gap(16),
                        TextFormField(
                          controller: _courseController,
                          decoration: InputDecoration(
                            labelText: context.strings.courseOfTreatment,
                            labelStyle: context.textTheme.bodyLarge,
                          ),
                          maxLines: 3,
                          validator: (value) =>
                              value == null || value.isEmpty ? context.strings.courseValidation : null,
                        ),
                        const Gap(16),
                        TextFormField(
                          controller: _notesController,
                          decoration: InputDecoration(
                            labelText: context.strings.notes,
                            labelStyle: context.textTheme.bodyLarge,
                          ),
                          maxLines: 3,
                        ),
                        const Gap(24),
                        ElevatedButton(
                          onPressed: _addMedication,
                          child: Text(
                            context.strings.addMedicationButton,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(24),
              Text(
                context.strings.medicationHistory,
                style: context.textTheme.headlineSmall,
              ),
              const Gap(16),
              BlocBuilder<MedicationTrackingCubit, MedicationTrackingState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  final meds = state.medications.medications;
                  if (meds.isEmpty) {
                    return Center(
                      child: Text(
                        context.strings.noMedications,
                        style: context.textTheme.bodyLarge,
                      ),
                    );
                  }
                  return ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: meds.length,
                    separatorBuilder: (_, __) => const Gap(12),
                    itemBuilder: (context, index) {
                      final med = meds[index];
                      return MedicationCard(
                        medication: med,
                        onDelete: () async {
                          await context.read<MedicationTrackingCubit>().deleteMedication(med);

                          if (!context.mounted) return;
                          toastification.show(
                            context: context,
                            style: ToastificationStyle.simple,
                            type: ToastificationType.success,
                            title: Text(context.strings.medicationDeleted),
                            alignment: Alignment.bottomCenter,
                            closeButton: ToastCloseButton(
                              buttonBuilder: (context, onClose) => SizedBox.shrink(),
                            ),
                            autoCloseDuration: const Duration(seconds: 3),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _addMedication() async {
    if (_formKey.currentState?.validate() ?? false) {
      await context.read<MedicationTrackingCubit>().addMedication(
            type: _selectedType!,
            dosage: _dosageController.text.trim(),
            course: _courseController.text.trim(),
            notes: _notesController.text.trim(),
          );
      _dosageController.clear();
      _courseController.clear();
      _notesController.clear();
      setState(() => _selectedType = null);

      if (!mounted) return;
      toastification.show(
        context: context,
        style: ToastificationStyle.simple,
        type: ToastificationType.success,
        title: Text(context.strings.medicationAdded),
        alignment: Alignment.bottomCenter,
        closeButton: ToastCloseButton(
          buttonBuilder: (context, onClose) => SizedBox.shrink(),
        ),
        autoCloseDuration: const Duration(seconds: 3),
      );
    }
  }

  @override
  void dispose() {
    _dosageController.dispose();
    _courseController.dispose();
    _notesController.dispose();
    super.dispose();
  }
}

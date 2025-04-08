import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';

class AddCourseDrugDialog extends StatelessWidget {
  const AddCourseDrugDialog({
    super.key,
    required this.drugNameController,
    required this.drugDosageController,
    required this.drugNotesController,
    required this.onChanged,
    required this.addOnPressed,
  });

  final TextEditingController drugNameController;
  final TextEditingController drugDosageController;
  final TextEditingController drugNotesController;
  final ValueChanged<MedicationType?> onChanged;
  final VoidCallback addOnPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.strings.addDrug),
      content: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: drugNameController,
              decoration: InputDecoration(
                labelText: context.strings.drugName,
              ),
              validator: (value) => value == null || value.isEmpty ? context.strings.drugNameValidation : null,
            ),
            const Gap(12),
            DropdownButtonFormField<MedicationType>(
              decoration: InputDecoration(
                labelText: context.strings.medicationType,
              ),
              items: MedicationType.values.map((type) {
                return DropdownMenuItem<MedicationType>(
                  value: type,
                  child: Text(
                    type.displayName(context),
                    style: context.textTheme.bodyMedium,
                  ),
                );
              }).toList(),
              onChanged: onChanged,
              validator: (value) => value == null ? context.strings.medicationTypeValidation : null,
            ),
            const Gap(12),
            TextFormField(
              controller: drugDosageController,
              decoration: InputDecoration(
                labelText: context.strings.dosage,
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              validator: (value) => value == null || value.isEmpty ? context.strings.dosageValidation : null,
            ),
            const Gap(12),
            TextFormField(
              controller: drugNotesController,
              decoration: InputDecoration(
                labelText: context.strings.notes,
              ),
              maxLines: 2,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: addOnPressed,
          child: Text(context.strings.add),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';

class DistanceField extends StatelessWidget {
  final TextEditingController controller;

  const DistanceField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.strings.distanceKm,
          style: context.textTheme.bodyMedium,
        ),
        const Gap(8),
        TextFormField(
          controller: controller,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: context.strings.enterDistanceInKm,
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return context.strings.pleaseEnterDistance;
            }
            final parsed = double.tryParse(value);
            if (parsed == null || parsed <= 0) {
              return context.strings.enterAValidDistance;
            }
            return null;
          },
        ),
      ],
    );
  }
}

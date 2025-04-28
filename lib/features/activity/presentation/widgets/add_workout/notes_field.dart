import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';

class MultiLineNotesField extends StatelessWidget {
  final TextEditingController controller;
  const MultiLineNotesField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.strings.additionalNotes,
          style: context.theme.textTheme.bodyMedium,
        ),
        const Gap(8),
        TextFormField(
          controller: controller,
          maxLines: 4,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: context.strings.enterAnyExtraDetails,
          ),
        ),
      ],
    );
  }
}

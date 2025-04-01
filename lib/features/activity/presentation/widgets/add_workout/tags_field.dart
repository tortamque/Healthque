import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';

class TagsField extends StatelessWidget {
  final TextEditingController controller;

  const TagsField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.strings.tagsCommaSeparated,
          style: context.theme.textTheme.bodyMedium,
        ),
        const Gap(8),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: context.strings.egMorningHIIT,
          ),
        ),
      ],
    );
  }
}

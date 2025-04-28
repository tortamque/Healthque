import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';

class WorkoutTypeSelector extends StatelessWidget {
  final WorkoutType? selectedWorkoutType;
  final ValueChanged<WorkoutType?> onChanged;

  const WorkoutTypeSelector({
    super.key,
    required this.selectedWorkoutType,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.strings.workoutType,
          style: context.textTheme.bodyMedium,
        ),
        const Gap(8),
        DropdownButtonFormField<WorkoutType>(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: context.strings.selectWorkoutType,
          ),
          items: WorkoutType.values
              .map(
                (type) => DropdownMenuItem<WorkoutType>(
                  value: type,
                  child: Text(type.displayName(context)),
                ),
              )
              .toList(),
          value: selectedWorkoutType,
          onChanged: onChanged,
          validator: (value) {
            if (value == null) return context.strings.pleaseSelectAWorkoutType;
            return null;
          },
        ),
      ],
    );
  }
}

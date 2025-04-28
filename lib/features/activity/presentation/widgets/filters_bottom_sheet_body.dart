import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/activity/activity.dart';
import 'package:intl/intl.dart';

class FiltersBottomSheetBody extends StatelessWidget {
  const FiltersBottomSheetBody({
    super.key,
    required this.selectedType,
    required this.selectedDate,
    required this.onTypeChanged,
    required this.onAfterDatePicker,
  });

  final WorkoutType? selectedType;
  final DateTime? selectedDate;
  final void Function(WorkoutType? value) onTypeChanged;
  final void Function(DateTime? pickedDate) onAfterDatePicker;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              context.strings.filterByType,
              style: context.theme.textTheme.titleMedium,
            ),
          ),
          const Gap(8),
          DropdownButton<WorkoutType?>(
            isExpanded: true,
            value: selectedType,
            hint: Text(context.strings.selectWorkoutType),
            items: [
              DropdownMenuItem<WorkoutType?>(
                value: null,
                child: Text(
                  context.strings.all,
                  style: context.textTheme.bodyMedium,
                ),
              ),
              ...WorkoutType.values.map((type) {
                return DropdownMenuItem<WorkoutType?>(
                  value: type,
                  child: Text(
                    type.displayName(context),
                    style: context.textTheme.bodyMedium,
                  ),
                );
              }),
            ],
            onChanged: onTypeChanged,
          ),
          const Gap(16),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              context.strings.filterByDate,
              style: context.theme.textTheme.titleMedium,
            ),
          ),
          const Gap(8),
          ListTile(
            title: Text(
              selectedDate == null ? context.strings.selectDate : DateFormat('dd.MM.yyyy').format(selectedDate!),
            ),
            trailing: const Icon(Icons.calendar_today),
            onTap: () async {
              final pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              );
              if (pickedDate != null) {
                onAfterDatePicker(pickedDate);
              }
            },
          ),
          const Gap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  context.read<ActivityCubit>().fetchWorkouts();
                  Navigator.pop(context);
                },
                child: Text(context.strings.clearFilter),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<ActivityCubit>().filterWorkouts(
                        type: selectedType,
                        date: selectedDate,
                      );
                  Navigator.pop(context);
                },
                child: Text(context.strings.applyFilter),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

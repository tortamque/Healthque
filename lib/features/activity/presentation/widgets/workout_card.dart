import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:health/health.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/extensions/string.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';

class WorkoutCard extends StatelessWidget {
  final HealthRecord record;

  const WorkoutCard({super.key, required this.record});

  WorkoutHealthValue get workoutValue => record.dataPoint.value as WorkoutHealthValue;

  String formatDate(DateTime date) => DateFormat("d MMM yyyy").format(date);
  String formatTime(DateTime date) => DateFormat("HH:mm").format(date);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.fitness_center, color: context.theme.colorScheme.primary),
                Gap(8),
                Expanded(
                  child: Text(
                    workoutValue.workoutActivityType.name.toLowerCase().titleCase,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  formatDate(record.date),
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            Gap(8),
            Row(
              children: [
                Icon(Icons.access_time, size: 16, color: Colors.grey),
                Gap(4),
                Text(
                  "${formatTime(record.dataPoint.dateFrom)} - ${formatTime(record.dataPoint.dateTo)}",
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            Gap(8),
            const Divider(),
            Gap(8),
            if (workoutValue.totalEnergyBurned != null)
              _InfoRow(
                label: context.strings.energyBurned,
                value: context.strings.amoutKcal(workoutValue.totalEnergyBurned ?? 0),
              ),
            if (workoutValue.totalDistance != null)
              _InfoRow(
                label: context.strings.distance,
                value: "${workoutValue.totalDistance} ${_unitString(workoutValue.totalDistanceUnit, context)}",
              ),
            if (workoutValue.totalSteps != null)
              _InfoRow(
                label: context.strings.steps,
                value: context.strings.amountSteps(workoutValue.totalSteps ?? 0),
              ),
          ],
        ),
      ),
    );
  }

  String _unitString(HealthDataUnit? unit, BuildContext context) {
    if (unit == null) return "";
    switch (unit) {
      case HealthDataUnit.METER:
        return context.strings.metersShort;
      case HealthDataUnit.MILE:
        return context.strings.milesShort;
      default:
        return unit.name.toString().toLowerCase().titleCase;
    }
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(
            "$label: ",
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

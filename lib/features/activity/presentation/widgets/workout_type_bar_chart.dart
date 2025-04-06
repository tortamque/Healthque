import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/extensions/string.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/health/health.dart';

class WorkoutTypeBarChart extends StatelessWidget {
  final List<HealthRecord> workoutRecords;

  const WorkoutTypeBarChart({super.key, required this.workoutRecords});

  @override
  Widget build(BuildContext context) {
    if (workoutRecords.isEmpty) {
      return NotEnoughDataPlaceholder(
        padding: const EdgeInsets.only(bottom: 20, top: 10),
      );
    }

    final Map<String, int> typeCounts = {};
    for (var record in workoutRecords) {
      final workoutValue = record.dataPoint.value as WorkoutHealthValue;
      final typeName = workoutValue.workoutActivityType.name;
      typeCounts.update(typeName, (prev) => prev + 1, ifAbsent: () => 1);
    }

    if (typeCounts.isEmpty) {
      return NotEnoughDataPlaceholder(
        padding: const EdgeInsets.only(bottom: 20, top: 10),
      );
    }

    final types = typeCounts.keys.toList()..sort((a, b) => typeCounts[b]!.compareTo(typeCounts[a]!));

    final displayTypes = types.length > 7 ? types.sublist(0, 7) : types;

    final List<BarChartGroupData> groups = List.generate(displayTypes.length, (i) {
      final count = typeCounts[displayTypes[i]]!.toDouble();
      return BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: count,
            color: context.theme.colorScheme.primary,
            width: 16,
            borderRadius: BorderRadius.circular(16),
          ),
        ],
      );
    });

    final double maxY = groups.map((g) => g.barRods.first.toY).reduce(max);
    final double calculatedInterval = maxY > 0 ? maxY / 5 : 1;
    final double dynamicInterval = calculatedInterval < 1 ? 1 : calculatedInterval;

    return AspectRatio(
      aspectRatio: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BarChart(
          BarChartData(
            maxY: maxY + maxY * 0.1,
            alignment: BarChartAlignment.spaceAround,
            barGroups: groups,
            barTouchData: BarTouchData(
              enabled: true,
              touchTooltipData: BarTouchTooltipData(
                tooltipRoundedRadius: 8,
                getTooltipItem: (group, groupIndex, rod, rodIndex) {
                  return BarTooltipItem(
                    "${displayTypes[group.x].toLowerCase().titleCase}: ${context.strings.amountWorkouts(rod.toY.toInt())}",
                    TextStyle(
                      color: context.theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  );
                },
                getTooltipColor: (touchedSpot) => context.theme.colorScheme.primaryContainer,
              ),
            ),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                  getTitlesWidget: (value, meta) {
                    if (value.toInt() < displayTypes.length) {
                      final label = displayTypes[value.toInt()];
                      return SideTitleWidget(
                        meta: meta,
                        space: 8,
                        child: Text(
                          label.toLowerCase().titleCase,
                          style: const TextStyle(fontSize: 12),
                        ),
                      );
                    }
                    return Container();
                  },
                ),
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                  interval: dynamicInterval,
                  maxIncluded: false,
                  getTitlesWidget: (value, meta) {
                    return SideTitleWidget(
                      meta: meta,
                      space: 8,
                      child: Text(
                        value.toInt().toString(),
                        style: const TextStyle(fontSize: 12),
                      ),
                    );
                  },
                ),
              ),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
            borderData: FlBorderData(show: false),
            gridData: FlGridData(show: false),
          ),
        ),
      ),
    );
  }
}

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';

class CaloriesBarChart extends StatelessWidget {
  final List<HealthRecord> caloriesRecords;

  const CaloriesBarChart({super.key, required this.caloriesRecords});

  @override
  Widget build(BuildContext context) {
    final groupedData = _groupCaloriesRecords();
    final sortedDays = groupedData.keys.toList()..sort((a, b) => a.compareTo(b));

    final barGroups = _buildBarGroups(context, sortedDays, groupedData);
    final maxY = _getMaxY(barGroups);

    return AspectRatio(
      aspectRatio: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY: maxY + (maxY > 0 ? maxY * 0.1 : 10),
            barTouchData: BarTouchData(
              enabled: true,
              touchTooltipData: BarTouchTooltipData(
                tooltipRoundedRadius: 8,
                getTooltipColor: (group) => context.theme.colorScheme.primaryContainer,
                getTooltipItem: (group, groupIndex, rod, rodIndex) {
                  final dateKey = sortedDays[group.x.toInt()];
                  final parts = dateKey.split("-");
                  final formattedDate = "${parts[2]}.${parts[1]}.${parts[0]}";
                  final caloriesLabel = _formatCalories(rod.toY, context);
                  return BarTooltipItem(
                    "$formattedDate\n$caloriesLabel",
                    TextStyle(
                      color: context.theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  );
                },
              ),
            ),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: (value, meta) {
                    if (value.toInt() < sortedDays.length) {
                      final parts = sortedDays[value.toInt()].split("-");
                      final label = "${parts[2]}.${parts[1].padLeft(2, '0')}";
                      return SideTitleWidget(
                        meta: meta,
                        space: 8,
                        child: Text(label, style: const TextStyle(fontSize: 12)),
                      );
                    }
                    return Container();
                  },
                ),
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 60,
                  interval: maxY > 0 ? maxY / 4 : 1,
                  maxIncluded: false,
                  getTitlesWidget: (value, meta) {
                    return SideTitleWidget(
                      meta: meta,
                      space: 8,
                      child: Text(
                        _formatCalories(value, context),
                        style: const TextStyle(fontSize: 12),
                      ),
                    );
                  },
                ),
              ),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
            gridData: FlGridData(show: false),
            borderData: FlBorderData(show: false),
            barGroups: barGroups,
          ),
        ),
      ),
    );
  }

  Map<String, double> _groupCaloriesRecords() {
    final Map<String, double> dailyCalories = {};
    if (caloriesRecords.isEmpty) return dailyCalories;

    for (var record in caloriesRecords) {
      final dateKey =
          "${record.date.year}-${record.date.month.toString().padLeft(2, '0')}-${record.date.day.toString().padLeft(2, '0')}";
      final calorieValue = (record.dataPoint.value as NumericHealthValue).numericValue.toDouble();
      dailyCalories.update(dateKey, (existing) => existing + calorieValue, ifAbsent: () => calorieValue);
    }

    final dates =
        caloriesRecords.map((record) => DateTime(record.date.year, record.date.month, record.date.day)).toList();
    final minDate = dates.reduce((a, b) => a.isBefore(b) ? a : b);
    final maxDate = dates.reduce((a, b) => a.isAfter(b) ? a : b);

    for (DateTime d = minDate; !d.isAfter(maxDate); d = d.add(const Duration(days: 1))) {
      final key = "${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}";
      if (!dailyCalories.containsKey(key)) {
        dailyCalories[key] = 0.0;
      }
    }

    return dailyCalories;
  }

  List<BarChartGroupData> _buildBarGroups(
      BuildContext context, List<String> sortedDays, Map<String, double> groupedData) {
    return List.generate(sortedDays.length, (i) {
      final value = groupedData[sortedDays[i]] ?? 0.0;
      return BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: value,
            color: context.theme.colorScheme.primary,
            width: 16,
            borderRadius: BorderRadius.circular(16),
          )
        ],
      );
    });
  }

  double _getMaxY(List<BarChartGroupData> groups) {
    double maxY = 0;
    for (final group in groups) {
      for (final rod in group.barRods) {
        if (rod.toY > maxY) maxY = rod.toY;
      }
    }
    return maxY;
  }

  String _formatCalories(double calories, BuildContext context) {
    return context.strings.amoutKcal(calories.toInt());
  }
}

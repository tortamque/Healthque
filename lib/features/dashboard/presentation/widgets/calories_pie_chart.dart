import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:health/health.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/dashboard/dashboard.dart';
import 'package:healthque/features/health/health.dart';

class CaloriesPieChart extends StatefulWidget {
  final List<HealthRecord> caloriesRecords;

  const CaloriesPieChart({super.key, required this.caloriesRecords});

  @override
  State<CaloriesPieChart> createState() => _CaloriesPieChartState();
}

class _CaloriesPieChartState extends State<CaloriesPieChart> {
  int touchedIndex = -1;

  List<Color> get sectionColors => [
        context.theme.colorScheme.primary,
        context.theme.colorScheme.inversePrimary,
        context.theme.colorScheme.onPrimaryFixedVariant,
        context.theme.colorScheme.primaryFixedDim,
      ];

  @override
  Widget build(BuildContext context) {
    if (widget.caloriesRecords.isEmpty) {
      return NotEnoughDataPlaceholder(
        padding: const EdgeInsets.only(bottom: 20, top: 10),
      );
    }

    final groupedData = _groupCaloriesRecords(widget.caloriesRecords);

    final validData = groupedData.entries.where((e) => e.value > 0).toList();
    validData.sort((a, b) => a.key.compareTo(b.key));

    final double totalCalories = validData.fold(0, (sum, entry) => sum + entry.value);

    return AspectRatio(
      aspectRatio: 1.6,
      child: Row(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, PieTouchResponse? pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(show: false),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: _buildPieSections(
                    context,
                    validData,
                    totalCalories,
                    sectionColors,
                  ),
                ),
                duration: const Duration(milliseconds: 150),
                curve: Curves.linear,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(validData.length, (index) {
              final entry = validData[index];
              final parts = entry.key.split('-');
              final dateLabel = "${parts[2]}.${parts[1]}";
              final bool isTouched = index == touchedIndex;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: isTouched ? 20 : 16,
                      height: isTouched ? 20 : 16,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: sectionColors[index % sectionColors.length],
                      ),
                    ),
                    const Gap(8),
                    Text(
                      "$dateLabel - ${context.strings.amoutKcal(entry.value.toInt())}",
                      style: context.textTheme.bodySmall?.copyWith(
                        fontSize: isTouched ? 13 : 12,
                        fontWeight: isTouched ? FontWeight.bold : FontWeight.normal,
                        color: isTouched ? context.theme.colorScheme.primary : context.theme.colorScheme.inverseSurface,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
          const Gap(16),
        ],
      ),
    );
  }

  Map<String, double> _groupCaloriesRecords(List<HealthRecord> records) {
    final Map<String, double> dailyCalories = {};
    for (var record in records) {
      final dateKey =
          "${record.date.year}-${record.date.month.toString().padLeft(2, '0')}-${record.date.day.toString().padLeft(2, '0')}";
      final calorieValue = (record.dataPoint.value as NumericHealthValue).numericValue.toDouble();
      dailyCalories.update(dateKey, (existing) => existing + calorieValue, ifAbsent: () => calorieValue);
    }
    return dailyCalories;
  }

  List<PieChartSectionData> _buildPieSections(
    BuildContext context,
    List<MapEntry<String, double>> data,
    double totalCalories,
    List<Color> sectionColors,
  ) {
    return List.generate(data.length, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 18.0 : 14.0;
      final double radius = isTouched ? 60.0 : 50.0;
      final double value = data[i].value;
      final percentage = (value / totalCalories * 100).toStringAsFixed(0);

      return PieChartSectionData(
        color: sectionColors[i % sectionColors.length],
        value: value,
        title: "$percentage%",
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      );
    });
  }
}

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/health/health.dart';

class WorkoutsAmountPieChart extends StatefulWidget {
  final List<HealthRecord> workoutRecords;

  const WorkoutsAmountPieChart({super.key, required this.workoutRecords});

  @override
  State<WorkoutsAmountPieChart> createState() => _WorkoutsAmountPieChartState();
}

class _WorkoutsAmountPieChartState extends State<WorkoutsAmountPieChart> {
  int touchedIndex = -1;

  List<Color> get sectionColors => [
        context.theme.colorScheme.primary,
        context.theme.colorScheme.inversePrimary,
        context.theme.colorScheme.onPrimaryFixedVariant,
        context.theme.colorScheme.primaryFixedDim,
      ];

  @override
  Widget build(BuildContext context) {
    if (widget.workoutRecords.isEmpty) {
      return NotEnoughDataPlaceholder(
        padding: const EdgeInsets.only(bottom: 20, top: 10),
      );
    }

    final groupedData = _groupWorkoutRecords(widget.workoutRecords);
    final validData = groupedData.entries.where((e) => e.value > 0).toList();
    validData.sort((a, b) => a.key.compareTo(b.key));

    final displayData = validData.length > 7 ? validData.sublist(validData.length - 7) : validData;

    final double totalWorkouts = displayData.fold(0, (sum, entry) => sum + entry.value);

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
                    displayData,
                    totalWorkouts,
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
            children: List.generate(displayData.length, (index) {
              final entry = displayData[index];
              final parts = entry.key.split('-');
              final dateLabel = "${parts[2]}.${parts[1]}";
              final bool isTouched = index == touchedIndex;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: isTouched ? 18 : 16,
                      height: isTouched ? 18 : 16,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: sectionColors[index % sectionColors.length],
                      ),
                    ),
                    const Gap(8),
                    Text(
                      "$dateLabel - ${context.strings.amountWorkouts(entry.value.toInt())}",
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

  Map<String, double> _groupWorkoutRecords(List<HealthRecord> records) {
    final Map<String, double> dailyWorkouts = {};
    for (var record in records) {
      final dateKey =
          "${record.date.year}-${record.date.month.toString().padLeft(2, '0')}-${record.date.day.toString().padLeft(2, '0')}";
      dailyWorkouts.update(dateKey, (existing) => existing + 1, ifAbsent: () => 1);
    }
    return dailyWorkouts;
  }

  List<PieChartSectionData> _buildPieSections(
    BuildContext context,
    List<MapEntry<String, double>> data,
    double totalWorkouts,
    List<Color> sectionColors,
  ) {
    return List.generate(data.length, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 18.0 : 14.0;
      final double radius = isTouched ? 60.0 : 50.0;
      final double value = data[i].value;
      final percentage = (value / totalWorkouts * 100).toStringAsFixed(0);
      return PieChartSectionData(
        color: sectionColors[i % sectionColors.length],
        value: value,
        title: context.strings.amountPercentage(percentage),
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

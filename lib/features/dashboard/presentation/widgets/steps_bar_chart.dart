import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health/health.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/health/health.dart';

class StepsBarChart extends StatelessWidget {
  final List<HealthRecord> stepsRecords;

  const StepsBarChart({super.key, required this.stepsRecords});

  int get stepsReserve => 1000;

  @override
  Widget build(BuildContext context) {
    if (stepsRecords.isEmpty) {
      return NotEnoughDataPlaceholder(
        padding: const EdgeInsets.only(bottom: 20, top: 10),
      );
    }

    final Map<String, int> dailySteps = {};
    for (var rec in stepsRecords) {
      final dateKey =
          "${rec.date.year}-${rec.date.month.toString().padLeft(2, '0')}-${rec.date.day.toString().padLeft(2, '0')}";
      final steps = (rec.dataPoint.value as NumericHealthValue).numericValue.toInt();
      dailySteps.update(dateKey, (prev) => prev + steps, ifAbsent: () => steps);
    }
    final sortedDates = dailySteps.keys.toList()..sort((a, b) => a.compareTo(b));
    final List<String> displayDates =
        sortedDates.length > 7 ? sortedDates.sublist(sortedDates.length - 7) : sortedDates;

    final groups = _buildBarGroups(context, dailySteps, displayDates);
    final double maxYVal = _getMaxY(groups);
    final double dynamicInterval = maxYVal > 0 ? (maxYVal) / 5 : 1;

    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        final desiredSteps = state.user.safeDesiredSteps;

        return AspectRatio(
          aspectRatio: 1.5,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: maxYVal + stepsReserve,
                extraLinesData: ExtraLinesData(
                  horizontalLines: [
                    HorizontalLine(
                      y: desiredSteps.toDouble(),
                      color: context.theme.colorScheme.onPrimaryFixedVariant,
                      strokeWidth: 2,
                      dashArray: [10, 10],
                      strokeCap: StrokeCap.round,
                    ),
                  ],
                ),
                barTouchData: BarTouchData(
                  enabled: true,
                  touchTooltipData: BarTouchTooltipData(
                    tooltipRoundedRadius: 8,
                    getTooltipItem: (group, groupIndex, rod, rodIndex) {
                      final textStyle = TextStyle(
                        color: context.theme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      );
                      return BarTooltipItem(
                        context.strings.amountSteps(rod.toY.toInt()),
                        textStyle,
                      );
                    },
                    getTooltipColor: (group) => context.theme.colorScheme.primaryContainer,
                  ),
                ),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 30,
                      getTitlesWidget: (value, meta) {
                        if (value.toInt() < displayDates.length) {
                          final parts = displayDates[value.toInt()].split('-');
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
                      reservedSize: 40,
                      interval: dynamicInterval,
                      maxIncluded: false,
                      getTitlesWidget: (value, meta) {
                        return Text(value.toInt().toString(), style: const TextStyle(fontSize: 12));
                      },
                    ),
                  ),
                  topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                ),
                borderData: FlBorderData(show: false),
                barGroups: groups,
                gridData: FlGridData(show: false),
              ),
            ),
          ),
        );
      },
    );
  }

  List<BarChartGroupData> _buildBarGroups(
    BuildContext context,
    Map<String, int> dailySteps,
    List<String> displayDates,
  ) {
    return List.generate(displayDates.length, (i) {
      final value = (dailySteps[displayDates[i]] ?? 0).toDouble();
      return BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: value,
            color: context.theme.colorScheme.primary,
            width: 16,
            borderRadius: BorderRadius.circular(16),
          ),
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
}

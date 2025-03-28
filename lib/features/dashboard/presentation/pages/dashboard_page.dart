import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:health/health.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.dashboard),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<HealthCubit, HealthState>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            return switch (state) {
              HealthStateInitial() => const Center(child: CircularProgressIndicator()),
              HealthStateLoading() => const Center(child: CircularProgressIndicator()),
              HealthStateLoaded(
                :final steps,
                :final calories,
                :final distance,
                :final sleep,
                :final workout,
                :final heartRate,
                :final bloodOxygen,
              ) =>
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Your activities',
                        style: context.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.normal),
                      ),
                    ),
                    Gap(16),
                    Card(
                      child: StepsBarChart(records: steps),
                    ),
                  ],
                ),
              HealthStateError(:final message) => Center(child: Text(message)),
            };
          },
        ),
      ),
    );
  }
}

//
class StepsBarChart extends StatelessWidget {
  final List<HealthRecord> records;
  const StepsBarChart({super.key, required this.records});

  List<BarChartGroupData> _buildBarGroups(BuildContext context) {
    final Map<String, int> dailySteps = {};
    for (var rec in records) {
      final dateKey = "${rec.date.year}-${rec.date.month}-${rec.date.day}";
      final steps = (rec.dataPoint.value as NumericHealthValue).numericValue.toInt();
      dailySteps.update(dateKey, (prev) => prev + steps, ifAbsent: () => steps);
    }
    final sortedKeys = dailySteps.keys.toList()..sort((a, b) => a.compareTo(b));
    return List.generate(sortedKeys.length, (i) {
      final value = (dailySteps[sortedKeys[i]] ?? 0).toDouble();
      return BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: value,
            color: Theme.of(context).colorScheme.primary,
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

  @override
  Widget build(BuildContext context) {
    final groups = _buildBarGroups(context);
    final Map<String, int> dailySteps = {};
    for (var rec in records) {
      final dateKey = "${rec.date.year}-${rec.date.month}-${rec.date.day}";
      final steps = (rec.dataPoint.value as NumericHealthValue).numericValue.toInt();
      dailySteps.update(dateKey, (prev) => prev + steps, ifAbsent: () => steps);
    }
    final sortedDates = dailySteps.keys.toList()..sort((a, b) => a.compareTo(b));
    return AspectRatio(
      aspectRatio: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY: _getMaxY(groups) + 1500,
            barTouchData: BarTouchData(
              enabled: true,
              touchTooltipData: BarTouchTooltipData(
                tooltipRoundedRadius: 8,
                getTooltipItem: (group, groupIndex, rod, rodIndex) {
                  final color = context.theme.colorScheme.primary;
                  final textStyle = TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  );
                  return BarTooltipItem(rod.toY.toInt().toString(), textStyle);
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
                    if (value.toInt() < sortedDates.length) {
                      final parts = sortedDates[value.toInt()].split('-');
                      final label = "${parts[2]}/${parts[1]}";
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
                  reservedSize: 30,
                  interval: 3000,
                  maxIncluded: false,
                  getTitlesWidget: (value, meta) {
                    return Text(
                      value.toInt().toString(),
                      style: const TextStyle(fontSize: 12),
                    );
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
  }
}

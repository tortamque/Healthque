import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:healthque/core/extensions/color.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/health/health.dart';

class SleepLineChart extends StatelessWidget {
  final List<HealthRecord> sleepRecords;

  const SleepLineChart({super.key, required this.sleepRecords});

  @override
  Widget build(BuildContext context) {
    final groupedData = _groupSleepRecords();
    final sortedDays = groupedData.keys.toList()..sort((a, b) => a.compareTo(b));

    if (sortedDays.length < 2) {
      return NotEnoughDataPlaceholder(
        padding: const EdgeInsets.only(bottom: 20, top: 10),
      );
    }

    final displayDays = sortedDays.length > 7 ? sortedDays.sublist(sortedDays.length - 7) : sortedDays;

    final List<FlSpot> spots = [];
    double maxY = 0;
    for (int i = 0; i < displayDays.length; i++) {
      final value = groupedData[displayDays[i]]!;
      maxY = max(maxY, value);
      spots.add(FlSpot(i.toDouble(), value));
    }

    final double dynamicInterval = maxY > 0 ? maxY / 5 : 1;

    return AspectRatio(
      aspectRatio: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: LineChart(
          LineChartData(
            lineTouchData: LineTouchData(
              touchTooltipData: LineTouchTooltipData(
                getTooltipItems: (touchedSpots) {
                  return touchedSpots.map((touchedSpot) {
                    final dateLabel = displayDays[touchedSpot.x.toInt()].split('-').reversed.join('.');
                    final sleepValue = _formatDuration(touchedSpot.y, context);
                    return LineTooltipItem(
                      "$dateLabel\n$sleepValue",
                      TextStyle(
                        color: context.theme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    );
                  }).toList();
                },
                getTooltipColor: (touchedSpot) => context.theme.colorScheme.primaryContainer,
              ),
            ),
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  interval: 1,
                  getTitlesWidget: (value, meta) {
                    if (value.toInt() < displayDays.length) {
                      final parts = displayDays[value.toInt()].split('-');
                      final label = "${parts[2]}.${parts[1]}";
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
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 60,
                  interval: dynamicInterval,
                  maxIncluded: false,
                  getTitlesWidget: (value, meta) {
                    return SideTitleWidget(
                      meta: meta,
                      space: 16,
                      child: Text(
                        _formatDuration(value, context),
                        style: const TextStyle(fontSize: 12),
                      ),
                    );
                  },
                ),
              ),
            ),
            borderData: FlBorderData(show: false),
            minX: 0,
            maxX: displayDays.isNotEmpty ? (displayDays.length - 1).toDouble() : 0,
            minY: 0,
            maxY: maxY + maxY * 0.05,
            lineBarsData: [
              LineChartBarData(
                isCurved: true,
                spots: spots,
                barWidth: 4,
                color: context.theme.colorScheme.primary,
                dotData: FlDotData(show: true),
                belowBarData: BarAreaData(
                  show: true,
                  color: context.theme.colorScheme.primary.customOpacity(0.3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Map<String, double> _groupSleepRecords() {
    final Map<String, double> dailySleep = {};
    for (var record in sleepRecords) {
      final dateKey =
          "${record.date.year}-${record.date.month.toString().padLeft(2, '0')}-${record.date.day.toString().padLeft(2, '0')}";
      final sleepDuration = (record.dataPoint.value as NumericHealthValue).numericValue.toDouble();
      dailySleep.update(dateKey, (existing) => existing + sleepDuration, ifAbsent: () => sleepDuration);
    }
    return dailySleep;
  }

  String _formatDuration(double totalMinutes, BuildContext context) {
    final int hours = totalMinutes ~/ 60;
    final int minutes = totalMinutes.toInt() % 60;
    return context.strings.sleepDuration(hours, minutes);
  }
}

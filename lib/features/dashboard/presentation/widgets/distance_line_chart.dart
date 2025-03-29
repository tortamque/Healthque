import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:healthque/core/extensions/color.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/dashboard/dashboard.dart';
import 'package:healthque/features/health/health.dart';

class DistanceLineChart extends StatelessWidget {
  final List<HealthRecord> distanceRecords;

  const DistanceLineChart({super.key, required this.distanceRecords});

  @override
  Widget build(BuildContext context) {
    if (distanceRecords.isEmpty) {
      return NotEnoughDataPlaceholder(
        padding: const EdgeInsets.only(bottom: 20, top: 10),
      );
    }

    final groupedData = _groupDistanceRecords();
    final sortedDays = groupedData.keys.toList()..sort((a, b) => a.compareTo(b));
    final displayDays = sortedDays.length > 7 ? sortedDays.sublist(sortedDays.length - 7) : sortedDays;

    final List<FlSpot> spots = [];
    double maxY = 0;
    for (int i = 0; i < displayDays.length; i++) {
      final value = groupedData[displayDays[i]]!;
      maxY = max(maxY, value);
      spots.add(FlSpot(i.toDouble(), value));
    }

    return AspectRatio(
      aspectRatio: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: LineChart(
          LineChartData(
            lineTouchData: LineTouchData(
              touchTooltipData: LineTouchTooltipData(
                getTooltipColor: (touchedSpot) => context.theme.colorScheme.primaryContainer,
                getTooltipItems: (touchedSpots) {
                  return touchedSpots.map((touchedSpot) {
                    final dateLabel = displayDays[touchedSpot.x.toInt()].split('-').reversed.join('.');
                    final distanceLabel = _formatDistance(touchedSpot.y, context);
                    return LineTooltipItem(
                      "$dateLabel\n$distanceLabel",
                      TextStyle(
                        color: context.theme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    );
                  }).toList();
                },
              ),
            ),
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
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
                  maxIncluded: false,
                  reservedSize: 55,
                  getTitlesWidget: (value, meta) {
                    return SideTitleWidget(
                      meta: meta,
                      space: 16,
                      child: Text(
                        _formatDistance(value, context),
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
            maxY: maxY + maxY * 0.1,
            lineBarsData: [
              LineChartBarData(
                isCurved: false,
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

  Map<String, double> _groupDistanceRecords() {
    final Map<String, double> dailyDistance = {};
    if (distanceRecords.isEmpty) return dailyDistance;

    for (var record in distanceRecords) {
      final dateKey =
          "${record.date.year}-${record.date.month.toString().padLeft(2, '0')}-${record.date.day.toString().padLeft(2, '0')}";
      final distanceValue = (record.dataPoint.value as NumericHealthValue).numericValue.toDouble();
      dailyDistance.update(dateKey, (existing) => existing + distanceValue, ifAbsent: () => distanceValue);
    }

    final dates =
        distanceRecords.map((record) => DateTime(record.date.year, record.date.month, record.date.day)).toList();
    final minDate = dates.reduce((a, b) => a.isBefore(b) ? a : b);
    final maxDate = dates.reduce((a, b) => a.isAfter(b) ? a : b);

    for (DateTime d = minDate; !d.isAfter(maxDate); d = d.add(const Duration(days: 1))) {
      final key = "${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}";
      if (!dailyDistance.containsKey(key)) {
        dailyDistance[key] = 0.0;
      }
    }

    return dailyDistance;
  }

  String _formatDistance(double distance, BuildContext context) {
    if (distance >= 1000) {
      final km = distance / 1000;
      String kmStr = km.toStringAsFixed(2);
      if (kmStr.endsWith(".00")) {
        kmStr = km.toStringAsFixed(0);
      } else if (kmStr.endsWith("0")) {
        kmStr = km.toStringAsFixed(1);
      }
      return context.strings.amountKm(kmStr);
    }
    return context.strings.amountM(distance.toStringAsFixed(0));
  }
}

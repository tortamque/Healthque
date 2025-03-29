import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:healthque/core/extensions/color.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';

class DistanceLineChart extends StatelessWidget {
  final List<HealthRecord> distanceRecords;

  const DistanceLineChart({super.key, required this.distanceRecords});

  @override
  Widget build(BuildContext context) {
    final groupedData = _groupDistanceRecords();
    final sortedDays = groupedData.keys.toList()..sort((a, b) => a.compareTo(b));

    final List<FlSpot> spots = [];
    double maxY = 0;
    for (int i = 0; i < sortedDays.length; i++) {
      final value = groupedData[sortedDays[i]]!;
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
                    final dateLabel = sortedDays[touchedSpot.x.toInt()].split('-').reversed.join('.');
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
                    if (value.toInt() < sortedDays.length) {
                      final parts = sortedDays[value.toInt()].split('-');
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
                  reservedSize: 60,
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
            maxX: sortedDays.isNotEmpty ? (sortedDays.length - 1).toDouble() : 0,
            minY: 0,
            maxY: maxY + maxY * 0.1,
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

  Map<String, double> _groupDistanceRecords() {
    final Map<String, double> dailyDistance = {};
    for (var record in distanceRecords) {
      final dateKey =
          "${record.date.year}-${record.date.month.toString().padLeft(2, '0')}-${record.date.day.toString().padLeft(2, '0')}";
      final distanceValue = (record.dataPoint.value as NumericHealthValue).numericValue.toDouble();
      dailyDistance.update(dateKey, (existing) => existing + distanceValue, ifAbsent: () => distanceValue);
    }
    return dailyDistance;
  }

  String _formatDistance(double distance, BuildContext context) {
    if (distance >= 1000) {
      final km = distance / 1000;
      return context.strings.amountKm(km.toStringAsFixed(1));
    }
    return context.strings.amountM(distance.toStringAsFixed(0));
  }
}

import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:healthque/core/extensions/color.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';

class BloodOxygenLineChart extends StatelessWidget {
  final List<HealthRecord> bloodOxygenRecords;

  const BloodOxygenLineChart({super.key, required this.bloodOxygenRecords});

  @override
  Widget build(BuildContext context) {
    final groupedData = _groupAndAverageBloodOxygenRecords();
    final sortedDays = groupedData.keys.toList()..sort((a, b) => a.compareTo(b));

    final List<FlSpot> spots = [];
    double maxY = 0, minY = double.infinity;
    for (int i = 0; i < sortedDays.length; i++) {
      final value = groupedData[sortedDays[i]]!;
      maxY = max(maxY, value);
      minY = min(minY, value);
      spots.add(FlSpot(i.toDouble(), value));
    }

    final double paddedMinY = (minY == double.infinity) ? 0 : (minY - 2);
    final double paddedMaxY = maxY + 2;

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
                    final dateKey = sortedDays[touchedSpot.x.toInt()];
                    final parts = dateKey.split('-');
                    final formattedDate = "${parts[2]}.${parts[1]}.${parts[0]}";
                    final oxygenLabel = context.strings.amountOxygenSaturation(touchedSpot.y.toInt());
                    return LineTooltipItem(
                      "$formattedDate\n$oxygenLabel",
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
              leftTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 55,
                  getTitlesWidget: (value, meta) {
                    return SideTitleWidget(
                      meta: meta,
                      space: 12,
                      child: Text(
                        context.strings.amountOxygenSaturation(value.toInt()),
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
            minY: paddedMinY,
            maxY: paddedMaxY,
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

  Map<String, double> _groupAndAverageBloodOxygenRecords() {
    final Map<String, List<double>> groupedValues = {};

    for (var record in bloodOxygenRecords) {
      final dateKey =
          "${record.date.year}-${record.date.month.toString().padLeft(2, '0')}-${record.date.day.toString().padLeft(2, '0')}";
      final value = (record.dataPoint.value as NumericHealthValue).numericValue.toDouble();
      if (groupedValues.containsKey(dateKey)) {
        groupedValues[dateKey]!.add(value);
      } else {
        groupedValues[dateKey] = [value];
      }
    }

    final Map<String, double> averagedValues = {};
    groupedValues.forEach((key, list) {
      final average = list.reduce((a, b) => a + b) / list.length;
      averagedValues[key] = average;
    });
    return averagedValues;
  }
}

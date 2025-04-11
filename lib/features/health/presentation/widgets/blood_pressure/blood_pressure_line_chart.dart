import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:healthque/core/extensions/color.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';
import 'package:healthque/core/extensions/context.dart';

class BloodPressureLineChart extends StatelessWidget {
  final List<BloodPressureRecord> records;

  const BloodPressureLineChart({super.key, required this.records});

  @override
  Widget build(BuildContext context) {
    if (records.isEmpty) {
      return Center(child: Text(context.strings.noMeasurements));
    }
    final sortedRecords = List<BloodPressureRecord>.from(records)
      ..sort((a, b) => a.measurementTime.compareTo(b.measurementTime));

    final filteredRecords = sortedRecords.length > 7 ? sortedRecords.sublist(sortedRecords.length - 7) : sortedRecords;
    if (filteredRecords.length < 2) {
      return Center(child: Text(context.strings.notEnoughData));
    }

    final List<FlSpot> systolicSpots = [];
    final List<FlSpot> diastolicSpots = [];
    double globalMin = double.infinity;

    double globalMax = -double.infinity;
    for (int i = 0; i < filteredRecords.length; i++) {
      final systolic = filteredRecords[i].systolic.toDouble();
      final diastolic = filteredRecords[i].diastolic.toDouble();
      globalMin = min(globalMin, min(systolic, diastolic));
      globalMax = max(globalMax, max(systolic, diastolic));
      systolicSpots.add(FlSpot(i.toDouble(), systolic));
      diastolicSpots.add(FlSpot(i.toDouble(), diastolic));
    }

    final yMargin = (globalMax - globalMin) * 0.2;
    final yMin = globalMin - yMargin;
    final yMax = globalMax + yMargin;
    final interval = (yMax - yMin) / 3;

    return AspectRatio(
      aspectRatio: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: LineChart(
          LineChartData(
            extraLinesData: ExtraLinesData(
              horizontalLines: [
                HorizontalLine(
                  y: 120,
                  color: context.theme.colorScheme.secondary.customOpacity(0.25),
                  strokeWidth: 2,
                  dashArray: [6, 4],
                ),
                HorizontalLine(
                  y: 80,
                  color: context.theme.colorScheme.secondary.customOpacity(0.25),
                  strokeWidth: 2,
                  dashArray: [6, 4],
                ),
              ],
            ),
            lineTouchData: LineTouchData(
              enabled: true,
              touchTooltipData: LineTouchTooltipData(
                getTooltipColor: (touchedSpot) => context.theme.colorScheme.primaryContainer,
                getTooltipItems: (List<LineBarSpot> touchedSpots) {
                  return touchedSpots.map((spot) {
                    final index = spot.x.toInt();
                    if (index < 0 || index >= filteredRecords.length) return null;
                    final record = filteredRecords[index];
                    String label;
                    if (spot.barIndex == 0) {
                      label =
                          "${DateFormat('dd.MM.yyyy HH:mm').format(record.measurementTime)}\n${context.strings.systolicShortAmount(record.systolic)}";
                    } else {
                      label = context.strings.diastolicShortAmount(record.diastolic);
                    }
                    return LineTooltipItem(
                      label,
                      TextStyle(
                        color: spot.barIndex == 0
                            ? context.theme.colorScheme.primary
                            : context.theme.colorScheme.onPrimaryFixedVariant,
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
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  minIncluded: false,
                  interval: interval,
                  getTitlesWidget: (value, meta) {
                    final label = value.toStringAsFixed(0);
                    return SideTitleWidget(
                      space: 8,
                      meta: meta,
                      child: Text(label, style: const TextStyle(fontSize: 10)),
                    );
                  },
                ),
              ),
              topTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 20,
                  interval: 1,
                  getTitlesWidget: (value, meta) {
                    final index = value.toInt();
                    if (index >= 0 && index < filteredRecords.length) {
                      final date = filteredRecords[index].measurementTime;
                      return SideTitleWidget(
                        meta: meta,
                        space: 8,
                        child: Text(DateFormat('dd.MM').format(date), style: const TextStyle(fontSize: 10)),
                      );
                    }
                    return Container();
                  },
                ),
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            borderData: FlBorderData(show: false),
            minX: 0,
            maxX: (filteredRecords.length - 1).toDouble(),
            minY: yMin,
            maxY: yMax,
            lineBarsData: [
              LineChartBarData(
                isCurved: true,
                spots: systolicSpots,
                barWidth: 4,
                color: context.theme.colorScheme.primary,
                dotData: FlDotData(show: true),
                belowBarData: BarAreaData(
                  show: true,
                  color: context.theme.colorScheme.primary.customOpacity(0.3),
                ),
              ),
              LineChartBarData(
                isCurved: true,
                spots: diastolicSpots,
                barWidth: 4,
                color: context.theme.colorScheme.onPrimaryFixedVariant,
                dotData: FlDotData(show: true),
                belowBarData: BarAreaData(
                  show: true,
                  color: context.theme.colorScheme.onPrimaryFixedVariant.customOpacity(0.3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

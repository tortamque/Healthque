import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:healthque/core/extensions/color.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';
import 'package:healthque/core/extensions/context.dart';

class TemperatureLineChart extends StatelessWidget {
  final List<TemperatureRecord> records;

  const TemperatureLineChart({super.key, required this.records});

  @override
  Widget build(BuildContext context) {
    if (records.isEmpty) {
      return SizedBox.shrink();
    }

    final sortedRecords = List<TemperatureRecord>.from(records)
      ..sort((a, b) => a.measurementTime.compareTo(b.measurementTime));
    final filteredRecords = sortedRecords.length > 7 ? sortedRecords.sublist(sortedRecords.length - 7) : sortedRecords;

    if (filteredRecords.length < 2) {
      return Center(child: Text(context.strings.notEnoughData));
    }

    final List<FlSpot> spots = [];
    double minY = double.infinity;
    double maxY = -double.infinity;

    for (int i = 0; i < filteredRecords.length; i++) {
      final temp = filteredRecords[i].temperature;
      minY = min(minY, temp);
      maxY = max(maxY, temp);
      spots.add(FlSpot(i.toDouble(), temp));
    }

    final yMargin = (maxY - minY) * 0.2;
    final yMin = minY - yMargin;
    final yMax = maxY + yMargin;
    final double interval = (yMax - yMin) / 3;

    return AspectRatio(
      aspectRatio: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: LineChart(
          LineChartData(
            extraLinesData: ExtraLinesData(
              horizontalLines: [
                HorizontalLine(
                  y: 36.6,
                  color: context.theme.colorScheme.onPrimaryFixedVariant,
                  strokeWidth: 2,
                  dashArray: [10, 10],
                  strokeCap: StrokeCap.round,
                )
              ],
            ),
            lineTouchData: LineTouchData(
              enabled: true,
              touchTooltipData: LineTouchTooltipData(
                getTooltipColor: (group) => context.theme.colorScheme.primaryContainer,
                getTooltipItems: (List<LineBarSpot> touchedSpots) {
                  return touchedSpots
                      .map((spot) {
                        final index = spot.x.toInt();
                        if (index < 0 || index >= filteredRecords.length) return null;
                        final record = filteredRecords[index];
                        final time = DateFormat('dd.MM.yyyy HH:mm').format(record.measurementTime);
                        final tempLabel = "${record.temperature.toStringAsFixed(1)}°C";
                        return LineTooltipItem(
                          "$time\n$tempLabel",
                          TextStyle(
                            color: context.theme.colorScheme.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        );
                      })
                      .whereType<LineTooltipItem>()
                      .toList();
                },
              ),
            ),
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(
                leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
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
                          child: Text(
                            DateFormat('dd.MM').format(date),
                            style: const TextStyle(fontSize: 10),
                          ),
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
                    minIncluded: false,
                    interval: interval,
                    getTitlesWidget: (value, meta) {
                      final label = value.toStringAsFixed(1);
                      return SideTitleWidget(
                        space: 8,
                        meta: meta,
                        child: Text(
                          label,
                          style: const TextStyle(fontSize: 10),
                        ),
                      );
                    },
                  ),
                )),
            borderData: FlBorderData(show: false),
            minX: 0,
            maxX: (filteredRecords.length - 1).toDouble(),
            minY: yMin,
            maxY: yMax,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

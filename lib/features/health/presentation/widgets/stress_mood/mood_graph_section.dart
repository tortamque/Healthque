import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/color.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';
import 'package:healthque/core/extensions/context.dart';

class MoodGraphSection extends StatelessWidget {
  const MoodGraphSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StressMoodTrackingCubit, StressMoodTrackingState>(
      builder: (context, state) {
        final records = state.records.records;
        final Map<String, List<int>> dailyMood = {};

        for (var record in records) {
          final key = DateFormat('yyyy-MM-dd').format(record.measurementTime);
          dailyMood.update(key, (value) => [...value, record.mood], ifAbsent: () => [record.mood]);
        }

        final sortedDays = dailyMood.keys.toList()..sort();
        final displayDays = sortedDays.length > 7 ? sortedDays.sublist(sortedDays.length - 7) : sortedDays;

        if (displayDays.length < 2) {
          return Center(child: Text(context.strings.notEnoughData));
        }

        final List<FlSpot> spots = [];
        double minY = double.infinity;
        double maxY = -double.infinity;
        for (int i = 0; i < displayDays.length; i++) {
          final values = dailyMood[displayDays[i]]!;
          final avgMood = values.reduce((a, b) => a + b) / values.length;
          minY = min(minY, avgMood);
          maxY = max(maxY, avgMood);
          spots.add(FlSpot(i.toDouble(), avgMood));
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(context.strings.moodGraph, style: context.textTheme.titleLarge),
            const Gap(8),
            AspectRatio(
              aspectRatio: 1.5,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: LineChart(
                  LineChartData(
                    extraLinesData: ExtraLinesData(),
                    lineTouchData: LineTouchData(
                      enabled: true,
                      touchTooltipData: LineTouchTooltipData(
                        getTooltipColor: (touchedSpot) => context.theme.colorScheme.primaryContainer,
                        getTooltipItems: (spots) {
                          return spots
                              .map((spot) {
                                final index = spot.x.toInt();
                                if (index >= 0 && index < displayDays.length) {
                                  final day = displayDays[index];
                                  final avg = spot.y;
                                  return LineTooltipItem(
                                    "$day\n${avg.toStringAsFixed(1)}",
                                    TextStyle(
                                      color: context.theme.colorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  );
                                }
                                return null;
                              })
                              .whereType<LineTooltipItem>()
                              .toList();
                        },
                      ),
                    ),
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 30,
                          interval: 1,
                          getTitlesWidget: (value, meta) {
                            return SideTitleWidget(
                              space: 8,
                              meta: meta,
                              child: Text(value.toStringAsFixed(0), style: const TextStyle(fontSize: 10)),
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
                            if (index >= 0 && index < displayDays.length) {
                              final date = DateFormat('dd.MM').format(DateTime.parse(displayDays[index]));
                              return SideTitleWidget(
                                meta: meta,
                                space: 8,
                                child: Text(date, style: const TextStyle(fontSize: 10)),
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
                    maxX: (displayDays.length - 1).toDouble(),
                    minY: 0,
                    maxY: 5,
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
            ),
          ],
        );
      },
    );
  }
}

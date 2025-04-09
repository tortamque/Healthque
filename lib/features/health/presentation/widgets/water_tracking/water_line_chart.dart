import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:healthque/core/extensions/color.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/presentation/bloc/user_cubit/user_cubit.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/features/health/health.dart';

class WaterLineChart extends StatelessWidget {
  final List<WaterRecord> records;

  const WaterLineChart({super.key, required this.records});

  @override
  Widget build(BuildContext context) {
    final Map<String, double> dailyTotals = {};
    for (var record in records) {
      final key = DateFormat('yyyy-MM-dd').format(record.datetime);
      dailyTotals.update(key, (existing) => existing + record.amount, ifAbsent: () => record.amount);
    }

    final sortedDays = dailyTotals.keys.toList()..sort((a, b) => a.compareTo(b));
    final displayDays = sortedDays.length > 7 ? sortedDays.sublist(sortedDays.length - 7) : sortedDays;

    if (displayDays.length < 2) {
      return Center(
        child: Text(context.strings.noWaterRecords),
      );
    }

    final List<FlSpot> spots = [];
    double maxY = 0;
    for (int i = 0; i < displayDays.length; i++) {
      final value = dailyTotals[displayDays[i]]!;
      maxY = max(maxY, value);
      spots.add(FlSpot(i.toDouble(), value));
    }

    final double yAxisMax = maxY + maxY * 0.1;
    final double yInterval = yAxisMax / 3;

    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        final userState = context.watch<UserCubit>().state;
        final double target = ((userState.user.waterConsumption ?? 0) / 1000).toDouble();

        maxY = max(maxY, target);

        return AspectRatio(
          aspectRatio: 1.5,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: LineChart(
              LineChartData(
                extraLinesData: ExtraLinesData(
                  horizontalLines: [
                    HorizontalLine(
                      y: target,
                      color: context.theme.colorScheme.onPrimaryFixedVariant,
                      strokeWidth: 2,
                      dashArray: [10, 10],
                      strokeCap: StrokeCap.round,
                    ),
                  ],
                ),
                lineTouchData: LineTouchData(
                  enabled: true,
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipColor: (_) => context.theme.colorScheme.primaryContainer,
                    tooltipHorizontalAlignment: FLHorizontalAlignment.left,
                    getTooltipItems: (touchedSpots) {
                      return touchedSpots.map((touchedSpot) {
                        final dateKey = displayDays[touchedSpot.x.toInt()];
                        final dateLabel = DateFormat('dd.MM').format(DateTime.parse(dateKey));
                        final double liters = touchedSpot.y;
                        final String valueLabel = liters * 1000 < 1000
                            ? context.strings.amountMl(liters * 1000)
                            : context.strings.amountL(liters.toStringAsFixed(2));
                        return LineTooltipItem(
                          "$dateLabel\n$valueLabel",
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
                      reservedSize: 30,
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (value, meta) {
                        if (value.toInt() < displayDays.length) {
                          final date = DateTime.parse(displayDays[value.toInt()]);
                          final label = DateFormat('dd.MM').format(date);
                          return SideTitleWidget(
                            space: 8,
                            meta: meta,
                            child: Text(label, style: const TextStyle(fontSize: 12)),
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 50,
                      interval: yInterval,
                      getTitlesWidget: (value, meta) {
                        final String text;
                        if (value * 1000 < 1000) {
                          text = context.strings.amountMl(value * 1000);
                        } else {
                          text = context.strings.amountL(value.toStringAsFixed(2));
                        }
                        return SideTitleWidget(
                          space: 8,
                          meta: meta,
                          child: Text(text, style: const TextStyle(fontSize: 12)),
                        );
                      },
                    ),
                  ),
                  topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                ),
                borderData: FlBorderData(show: false),
                minX: 0,
                maxX: displayDays.isNotEmpty ? (displayDays.length - 1).toDouble() : 0,
                minY: 0,
                maxY: yAxisMax,
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
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

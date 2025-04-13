import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';

class SleepStatisticsCard extends StatelessWidget {
  final double efficiencyPercent;
  final double awakePercent;
  final double deepSleepPercent;
  final double remSleepPercent;
  final double lightSleepPercent;

  const SleepStatisticsCard({
    super.key,
    required this.efficiencyPercent,
    required this.awakePercent,
    required this.deepSleepPercent,
    required this.remSleepPercent,
    required this.lightSleepPercent,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => context.push(
          Routes.sleepStatisticsInfoPage,
          extra: SleepStatisticsInfoPageExtra(
            efficiency: efficiencyPercent,
            awake: awakePercent,
            deep: deepSleepPercent,
            rem: remSleepPercent,
            light: lightSleepPercent,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    context.strings.sleepStatisticsTitle,
                    style: context.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Gap(8),
                  Icon(Icons.arrow_forward_ios_rounded, size: 14)
                ],
              ),
              const Gap(16),
              _StatisticRow(label: context.strings.sleepStatEfficiency, percent: efficiencyPercent),
              _StatisticRow(label: context.strings.sleepStatAwake, percent: awakePercent),
              _StatisticRow(label: context.strings.sleepStatRem, percent: remSleepPercent),
              _StatisticRow(label: context.strings.sleepStatLight, percent: lightSleepPercent),
              _StatisticRow(label: context.strings.sleepStatDeep, percent: deepSleepPercent),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatisticRow extends StatelessWidget {
  const _StatisticRow({
    required this.label,
    required this.percent,
  });

  final String label;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: context.textTheme.bodySmall),
            Text(
              "${percent.toStringAsFixed(0)}%",
              style: context.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 4),
        LinearProgressIndicator(
          borderRadius: BorderRadius.circular(8),
          value: percent / 100,
          minHeight: 6,
          backgroundColor: Colors.grey.shade300,
          valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).colorScheme.primary),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}

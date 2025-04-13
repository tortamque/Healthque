import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';

class SleepStageLengthsCard extends StatelessWidget {
  final int awakeMinutes;
  final int remMinutes;
  final int lightMinutes;
  final int deepMinutes;
  final int totalMinutes;

  const SleepStageLengthsCard({
    super.key,
    required this.awakeMinutes,
    required this.remMinutes,
    required this.lightMinutes,
    required this.deepMinutes,
    required this.totalMinutes,
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
          Routes.sleepLengthsInfoPage,
          extra: SleepStageLengthsInfoPageExtra(
            awakeMinutes: awakeMinutes,
            deepMinutes: deepMinutes,
            remMinutes: remMinutes,
            lightMinutes: lightMinutes,
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
                    context.strings.sleepStageLengthsTitle,
                    style: context.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Gap(8),
                  Icon(Icons.arrow_forward_ios_rounded, size: 14)
                ],
              ),
              const Gap(16),
              _StageRow(
                label: context.strings.sleepStageAwake,
                duration: awakeMinutes,
                totalMinutes: totalMinutes,
              ),
              _StageRow(
                label: context.strings.sleepStageRem,
                duration: remMinutes,
                totalMinutes: totalMinutes,
              ),
              _StageRow(
                label: context.strings.sleepStageLight,
                duration: lightMinutes,
                totalMinutes: totalMinutes,
              ),
              _StageRow(
                label: context.strings.sleepStageDeep,
                duration: deepMinutes,
                totalMinutes: totalMinutes,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StageRow extends StatelessWidget {
  const _StageRow({
    required this.label,
    required this.duration,
    required this.totalMinutes,
  });

  final String label;
  final int duration;
  final int totalMinutes;

  @override
  Widget build(BuildContext context) {
    final double fraction = totalMinutes > 0 ? duration / totalMinutes : 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: context.textTheme.bodySmall),
            Text(
              _formatDuration(duration),
              style: context.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 4),
        LinearProgressIndicator(
          borderRadius: BorderRadius.circular(8),
          value: fraction,
          minHeight: 6,
          backgroundColor: Colors.grey.shade300,
          valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).colorScheme.primary),
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  String _formatDuration(int minutes) {
    final int hours = minutes ~/ 60;
    final int mins = minutes % 60;
    if (hours > 0) {
      return "$hours h $mins m";
    } else {
      return "$mins m";
    }
  }
}

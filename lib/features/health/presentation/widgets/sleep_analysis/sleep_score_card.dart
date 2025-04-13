import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';

class SleepScoreCard extends StatelessWidget {
  final double score;
  final String scoreLabel;
  final String emoji;

  const SleepScoreCard({
    super.key,
    required this.score,
    required this.scoreLabel,
    required this.emoji,
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
          Routes.sleepScoreInfoPage,
          extra: SleepScoreInfoPageExtra(
            score: score,
            scoreLabel: scoreLabel,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    context.strings.sleepScoreTitle,
                    style: context.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Gap(8),
                  Icon(Icons.arrow_forward_ios_rounded, size: 14)
                ],
              ),
              const Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        score.toInt().toString(),
                        style: context.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Gap(4),
                      Text(scoreLabel, style: context.textTheme.bodyMedium),
                    ],
                  ),
                  Text(
                    emoji,
                    style: const TextStyle(fontSize: 48),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

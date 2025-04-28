import 'package:flutter/material.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';

class SleepScoreInfoPage extends StatelessWidget {
  final double score;
  final String scoreLabel;

  const SleepScoreInfoPage({
    super.key,
    required this.score,
    required this.scoreLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.sleepScoreInfoTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionCard(
              title: context.strings.sleepScoreInfoWhatIsTitle,
              content: context.strings.sleepScoreInfoWhatIsContent,
            ),
            SectionCard(
              title: context.strings.sleepScoreInfoCalculationTitle,
              content: context.strings.sleepScoreInfoCalculationContent,
            ),
            SectionCard(
              title: context.strings.sleepScoreInfoImportanceTitle,
              content: context.strings.sleepScoreInfoImportanceContent,
            ),
            SectionCard(
              title: context.strings.sleepScoreInfoYourScoreTitle,
              content: context.strings.sleepScoreInfoYourScoreContent(score.toStringAsFixed(0), scoreLabel),
            ),
          ],
        ),
      ),
    );
  }
}

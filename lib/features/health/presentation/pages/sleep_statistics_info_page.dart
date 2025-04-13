import 'package:flutter/material.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';

class SleepStatisticsInfoPage extends StatelessWidget {
  final double efficiency;
  final double awake;
  final double deep;
  final double rem;
  final double light;

  const SleepStatisticsInfoPage({
    super.key,
    required this.efficiency,
    required this.awake,
    required this.deep,
    required this.rem,
    required this.light,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.sleepStatisticsInfoTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionCard(
              title: context.strings.sleepStatisticsInfoWhatIsTitle,
              content: context.strings.sleepStatisticsInfoWhatIsContent,
            ),
            SectionCard(
              title: context.strings.sleepStatisticsInfoEfficiencyTitle,
              content: context.strings.sleepStatisticsInfoEfficiencyContent,
            ),
            SectionCard(
              title: context.strings.sleepStatisticsInfoStagesTitle,
              content: context.strings.sleepStatisticsInfoStagesContent,
            ),
            SectionCard(
              title: context.strings.sleepStatisticsInfoYourStatsTitle,
              content: context.strings.sleepStatisticsInfoYourStatsContent(
                efficiency.toStringAsFixed(0),
                awake.toStringAsFixed(0),
                deep.toStringAsFixed(0),
                rem.toStringAsFixed(0),
                light.toStringAsFixed(0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

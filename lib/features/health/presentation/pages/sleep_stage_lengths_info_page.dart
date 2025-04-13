import 'package:flutter/material.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';

class SleepStageLengthsInfoPage extends StatelessWidget {
  final int awakeMinutes;
  final int deepMinutes;
  final int remMinutes;
  final int lightMinutes;

  const SleepStageLengthsInfoPage({
    super.key,
    required this.awakeMinutes,
    required this.deepMinutes,
    required this.remMinutes,
    required this.lightMinutes,
  });

  String _formatDuration(int minutes) {
    final int hours = minutes ~/ 60;
    final int mins = minutes % 60;
    if (hours > 0) {
      return "$hours h $mins m";
    } else {
      return "$mins m";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.sleepStageLengthsInfoTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionCard(
              title: context.strings.sleepStageAwakeInfoTitle,
              content: context.strings.sleepStageAwakeInfoContent,
            ),
            SectionCard(
              title: context.strings.sleepStageRemInfoTitle,
              content: context.strings.sleepStageRemInfoContent,
            ),
            SectionCard(
              title: context.strings.sleepStageLightInfoTitle,
              content: context.strings.sleepStageLightInfoContent,
            ),
            SectionCard(
              title: context.strings.sleepStageDeepInfoTitle,
              content: context.strings.sleepStageDeepInfoContent,
            ),
            SectionCard(
              title: context.strings.sleepStageLengthsInfoWhatIsTitle,
              content: context.strings.sleepStageLengthsInfoWhatIsContent,
            ),
            SectionCard(
              title: context.strings.sleepStageLengthsInfoInterpretationTitle,
              content: context.strings.sleepStageLengthsInfoInterpretationContent,
            ),
            SectionCard(
              title: context.strings.sleepStageLengthsInfoImportanceTitle,
              content: context.strings.sleepStageLengthsInfoImportanceContent,
            ),
            SectionCard(
              title: context.strings.sleepStageLengthsInfoYourStatsTitle,
              content: context.strings.sleepStageLengthsInfoYourStatsContent(
                _formatDuration(awakeMinutes),
                _formatDuration(deepMinutes),
                _formatDuration(remMinutes),
                _formatDuration(lightMinutes),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

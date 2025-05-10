import 'package:health/health.dart';
import 'package:healthque/core/localization/generated/l10n.dart';
import 'package:healthque/features/health/health.dart';

class SleepAnalysisHelper {
  static List<HealthRecord> filterSleepRecords(
    HealthStateLoaded state,
    DateTime windowStart,
    DateTime windowEnd,
  ) =>
      state.sleep
          .where(
            (record) => record.dataPoint.dateFrom.isAfter(windowStart) && record.dataPoint.dateFrom.isBefore(windowEnd),
          )
          .toList()
        ..sort((a, b) => a.dataPoint.dateFrom.compareTo(b.dataPoint.dateFrom));

  static DateTime computeTimelineStart(List<HealthRecord> records) =>
      records.map((record) => record.dataPoint.dateFrom).reduce((a, b) => a.isBefore(b) ? a : b);

  static DateTime computeTimelineEnd(List<HealthRecord> records) =>
      records.map((record) => record.dataPoint.dateTo).reduce((a, b) => a.isAfter(b) ? a : b);

  static int computeTotalIncludingMinutes(DateTime timelineStart, DateTime timelineEnd) =>
      timelineEnd.difference(timelineStart).inMinutes;

  static int computeTotalExcludingMinutes(List<HealthRecord> records) => records.fold<int>(
        0,
        (sum, record) => record.dataPoint.type == HealthDataType.SLEEP_AWAKE
            ? sum
            : sum + record.dataPoint.dateTo.difference(record.dataPoint.dateFrom).inMinutes,
      );

  static double computeEfficiencyPercent(
    int totalIncluding,
    int totalExcluding,
  ) =>
      totalIncluding > 0 ? (totalExcluding / totalIncluding) * 100.0 : 0.0;

  static double computeAwakePercent(
    int totalIncluding,
    int totalExcluding,
  ) =>
      totalIncluding > 0 ? ((totalIncluding - totalExcluding) / totalIncluding) * 100.0 : 0.0;

  static int computeStageMinutes(
    List<HealthRecord> records,
    HealthDataType type,
  ) =>
      records
          .where((r) => r.dataPoint.type == type)
          .fold(0, (prev, r) => prev + r.dataPoint.dateTo.difference(r.dataPoint.dateFrom).inMinutes);

  static int computeOverallSleepMinutes(List<HealthRecord> records) => records.fold<int>(
        0,
        (sum, r) => sum + r.dataPoint.dateTo.difference(r.dataPoint.dateFrom).inMinutes,
      );

  static SleepScoreResult computeSleepScore(
    int totalIncludingMinutes,
    int totalExcludingMinutes,
    Strings strings,
  ) {
    final double efficiency = totalIncludingMinutes > 0 ? totalExcludingMinutes / totalIncludingMinutes : 0.0;
    final double durationFactor = (totalIncludingMinutes / 480).clamp(0.0, 1.0);
    final double score = ((efficiency + durationFactor) / 2) * 100;

    if (score < 20) {
      return SleepScoreResult(
        score: score,
        label: strings.sleepScoreVeryBad,
        emoji: strings.sleepScoreEmojiVeryBad,
      );
    } else if (score < 40) {
      return SleepScoreResult(
        score: score,
        label: strings.sleepScoreBad,
        emoji: strings.sleepScoreEmojiBad,
      );
    } else if (score < 60) {
      return SleepScoreResult(
        score: score,
        label: strings.sleepScorePoor,
        emoji: strings.sleepScoreEmojiPoor,
      );
    } else if (score < 70) {
      return SleepScoreResult(
        score: score,
        label: strings.sleepScoreAverage,
        emoji: strings.sleepScoreEmojiAverage,
      );
    } else if (score < 90) {
      return SleepScoreResult(
        score: score,
        label: strings.sleepScoreGood,
        emoji: strings.sleepScoreEmojiGood,
      );
    } else {
      return SleepScoreResult(
        score: score,
        label: strings.sleepScoreExcellent,
        emoji: strings.sleepScoreEmojiExcellent,
      );
    }
  }
}

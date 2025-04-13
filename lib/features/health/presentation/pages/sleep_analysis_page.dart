import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:health/health.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/presentation/presentation.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';

class SleepAnalysisPage extends StatefulWidget {
  const SleepAnalysisPage({super.key});

  @override
  State<SleepAnalysisPage> createState() => _SleepAnalysisPageState();
}

class _SleepAnalysisPageState extends State<SleepAnalysisPage> {
  bool _segmentsVisible = false;
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final targetDate = DateTime(_selectedDate.year, _selectedDate.month, _selectedDate.day);
    final windowStart = targetDate.subtract(const Duration(hours: 4));
    final windowEnd = targetDate.add(const Duration(hours: 14));

    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.sleepAnalysisTitle),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.strings.selectNight,
                    style: context.textTheme.bodyMedium,
                  ),
                  OutlinedButton(
                    onPressed: _selectDate,
                    child: Text(
                      _formatDate(_selectedDate),
                      style: context.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              const Gap(8),
              BlocBuilder<HealthCubit, HealthState>(
                builder: (context, state) {
                  if (state is HealthStateLoading) {
                    return const Center(
                      child: UnifiedCircularProgressIndicator(),
                    );
                  } else if (state is HealthStateError) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else if (state is HealthStateLoaded) {
                    final sleepRecords = _filterSleepRecords(state, windowStart, windowEnd);

                    if (sleepRecords.isEmpty) {
                      return Center(
                        child: Text(context.strings.noSleepDataLastNight),
                      );
                    }

                    final timelineStart = _computeTimelineStart(sleepRecords);
                    final timelineEnd = _computeTimelineEnd(sleepRecords);

                    final totalIncluding = _computeTotalIncludingMinutes(timelineStart, timelineEnd);
                    final incHours = totalIncluding ~/ 60;
                    final incMins = totalIncluding % 60;

                    final totalExcluding = _computeTotalExcludingMinutes(sleepRecords);
                    final excHours = totalExcluding ~/ 60;
                    final excMins = totalExcluding % 60;

                    final efficiencyPercent = _computeEfficiencyPercent(totalIncluding, totalExcluding);
                    final awakePercent = _computeAwakePercent(totalIncluding, totalExcluding);

                    final deepMinutes = _computeStageMinutes(sleepRecords, HealthDataType.SLEEP_DEEP);
                    final deepPercent = totalExcluding > 0 ? (deepMinutes / totalExcluding) * 100.0 : 0.0;

                    final remMinutes = _computeStageMinutes(sleepRecords, HealthDataType.SLEEP_REM);
                    final remPercent = totalExcluding > 0 ? (remMinutes / totalExcluding) * 100.0 : 0.0;

                    final lightMinutes = _computeStageMinutes(sleepRecords, HealthDataType.SLEEP_LIGHT);
                    final lightPercent = totalExcluding > 0 ? (lightMinutes / totalExcluding) * 100.0 : 0.0;

                    final sleepScoreResult = _computeSleepScore(totalIncluding, totalExcluding, context);
                    final overallSleep = _computeOverallSleepMinutes(sleepRecords);
                    final overallHours = overallSleep ~/ 60;
                    final overallMins = overallSleep % 60;

                    final awakeMinutes = totalIncluding - totalExcluding;

                    return SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.strings.sleepChartOverview(overallHours, overallMins),
                            style: context.textTheme.titleMedium,
                          ),
                          const Gap(16),
                          SleepScoreCard(
                            score: sleepScoreResult.score,
                            scoreLabel: sleepScoreResult.label,
                            emoji: sleepScoreResult.emoji,
                          ),
                          const Gap(16),
                          SleepOverviewCard(
                            timelineStart: timelineStart,
                            timelineEnd: timelineEnd,
                            incHours: incHours,
                            incMins: incMins,
                            excHours: excHours,
                            excMins: excMins,
                            sleepRecords: sleepRecords,
                          ),
                          const Gap(16),
                          SleepStatisticsCard(
                            efficiencyPercent: efficiencyPercent,
                            awakePercent: awakePercent,
                            deepSleepPercent: deepPercent,
                            remSleepPercent: remPercent,
                            lightSleepPercent: lightPercent,
                          ),
                          const Gap(16),
                          SleepStageLengthsCard(
                            awakeMinutes: awakeMinutes,
                            remMinutes: remMinutes,
                            lightMinutes: lightMinutes,
                            deepMinutes: deepMinutes,
                            totalMinutes: totalIncluding,
                          ),
                          const Gap(16),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _segmentsVisible = !_segmentsVisible;
                                });
                              },
                              child: Text(
                                _segmentsVisible
                                    ? context.strings.hideSleepSegments
                                    : context.strings.showSleepSegments,
                              ),
                            ),
                          ),
                          const Gap(16),
                          if (_segmentsVisible)
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: sleepRecords.length,
                              itemBuilder: (context, index) {
                                final record = sleepRecords[index];
                                final diffMinutes =
                                    record.dataPoint.dateTo.difference(record.dataPoint.dateFrom).inMinutes;

                                return SleepSegment(record: record, diffMinutes: diffMinutes);
                              },
                            ),
                        ],
                      ),
                    );
                  }
                  return Container();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatDate(DateTime dt) => DateFormat('dd.MM.yyyy').format(dt);

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  List<HealthRecord> _filterSleepRecords(
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

  DateTime _computeTimelineStart(List<HealthRecord> records) =>
      records.map((record) => record.dataPoint.dateFrom).reduce((a, b) => a.isBefore(b) ? a : b);

  DateTime _computeTimelineEnd(List<HealthRecord> records) =>
      records.map((record) => record.dataPoint.dateTo).reduce((a, b) => a.isAfter(b) ? a : b);

  int _computeTotalIncludingMinutes(DateTime timelineStart, DateTime timelineEnd) =>
      timelineEnd.difference(timelineStart).inMinutes;

  int _computeTotalExcludingMinutes(List<HealthRecord> records) => records.fold<int>(
        0,
        (sum, record) => record.dataPoint.type == HealthDataType.SLEEP_AWAKE
            ? sum
            : sum + record.dataPoint.dateTo.difference(record.dataPoint.dateFrom).inMinutes,
      );

  double _computeEfficiencyPercent(
    int totalIncluding,
    int totalExcluding,
  ) =>
      totalIncluding > 0 ? (totalExcluding / totalIncluding) * 100.0 : 0.0;

  double _computeAwakePercent(
    int totalIncluding,
    int totalExcluding,
  ) =>
      totalIncluding > 0 ? ((totalIncluding - totalExcluding) / totalIncluding) * 100.0 : 0.0;

  int _computeStageMinutes(
    List<HealthRecord> records,
    HealthDataType type,
  ) =>
      records
          .where((r) => r.dataPoint.type == type)
          .fold(0, (prev, r) => prev + r.dataPoint.dateTo.difference(r.dataPoint.dateFrom).inMinutes);

  int _computeOverallSleepMinutes(List<HealthRecord> records) => records.fold<int>(
        0,
        (sum, r) => sum + r.dataPoint.dateTo.difference(r.dataPoint.dateFrom).inMinutes,
      );

  SleepScoreResult _computeSleepScore(
    int totalIncludingMinutes,
    int totalExcludingMinutes,
    BuildContext context,
  ) {
    final double efficiency = totalIncludingMinutes > 0 ? totalExcludingMinutes / totalIncludingMinutes : 0.0;
    final double durationFactor = (totalIncludingMinutes / 480).clamp(0.0, 1.0);
    final double score = ((efficiency + durationFactor) / 2) * 100;

    if (score < 20) {
      return SleepScoreResult(
        score: score,
        label: context.strings.sleepScoreVeryBad,
        emoji: context.strings.sleepScoreEmojiVeryBad,
      );
    } else if (score < 40) {
      return SleepScoreResult(
        score: score,
        label: context.strings.sleepScoreBad,
        emoji: context.strings.sleepScoreEmojiBad,
      );
    } else if (score < 60) {
      return SleepScoreResult(
        score: score,
        label: context.strings.sleepScorePoor,
        emoji: context.strings.sleepScoreEmojiPoor,
      );
    } else if (score < 70) {
      return SleepScoreResult(
        score: score,
        label: context.strings.sleepScoreAverage,
        emoji: context.strings.sleepScoreEmojiAverage,
      );
    } else if (score < 90) {
      return SleepScoreResult(
        score: score,
        label: context.strings.sleepScoreGood,
        emoji: context.strings.sleepScoreEmojiGood,
      );
    } else {
      return SleepScoreResult(
        score: score,
        label: context.strings.sleepScoreExcellent,
        emoji: context.strings.sleepScoreEmojiExcellent,
      );
    }
  }
}

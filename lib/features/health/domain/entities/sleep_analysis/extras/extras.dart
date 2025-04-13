class SleepStageLengthsInfoPageExtra {
  final int awakeMinutes;
  final int deepMinutes;
  final int remMinutes;
  final int lightMinutes;

  SleepStageLengthsInfoPageExtra({
    required this.awakeMinutes,
    required this.deepMinutes,
    required this.remMinutes,
    required this.lightMinutes,
  });
}

class SleepStatisticsInfoPageExtra {
  final double efficiency;
  final double awake;
  final double deep;
  final double rem;
  final double light;

  SleepStatisticsInfoPageExtra({
    required this.efficiency,
    required this.awake,
    required this.deep,
    required this.rem,
    required this.light,
  });
}

class SleepScoreInfoPageExtra {
  final double score;
  final String scoreLabel;

  SleepScoreInfoPageExtra({required this.score, required this.scoreLabel});
}

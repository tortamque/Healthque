import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:health/health.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/extensions/health_data_type.dart';

class SleepStagesLegend extends StatelessWidget {
  const SleepStagesLegend({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _AwakeLegend(),
        _RemSleepLegend(),
        _LightSleepLegend(),
        _DeepSleepLegend(),
      ],
    );
  }
}

class _AwakeLegend extends StatelessWidget {
  const _AwakeLegend();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: HealthDataType.SLEEP_AWAKE.sleepColor,
            shape: BoxShape.circle,
          ),
        ),
        const Gap(4),
        Text(
          context.strings.sleepStageAwake,
          style: context.textTheme.bodySmall,
        ),
      ],
    );
  }
}

class _RemSleepLegend extends StatelessWidget {
  const _RemSleepLegend();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: HealthDataType.SLEEP_REM.sleepColor,
            shape: BoxShape.circle,
          ),
        ),
        const Gap(4),
        Text(
          context.strings.sleepStageRem,
          style: context.textTheme.bodySmall,
        ),
      ],
    );
  }
}

class _LightSleepLegend extends StatelessWidget {
  const _LightSleepLegend();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: HealthDataType.SLEEP_LIGHT.sleepColor,
            shape: BoxShape.circle,
          ),
        ),
        const Gap(4),
        Text(
          context.strings.sleepStageLight,
          style: context.textTheme.bodySmall,
        ),
      ],
    );
  }
}

class _DeepSleepLegend extends StatelessWidget {
  const _DeepSleepLegend();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: HealthDataType.SLEEP_DEEP.sleepColor,
            shape: BoxShape.circle,
          ),
        ),
        const Gap(4),
        Text(
          context.strings.sleepStageDeep,
          style: context.textTheme.bodySmall,
        ),
      ],
    );
  }
}

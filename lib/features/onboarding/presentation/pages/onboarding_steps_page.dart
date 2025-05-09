import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/extensions/string.dart';
import 'package:healthque/core/shared/presentation/bloc/user_cubit/user_cubit.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class OnboardingStepsPage extends StatefulWidget {
  const OnboardingStepsPage({super.key});

  @override
  State<OnboardingStepsPage> createState() => _OnboardingStepsPageState();
}

class _OnboardingStepsPageState extends State<OnboardingStepsPage> {
  int _steps = 10000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.strings.howManyStepsYouCanWalk.capitalizeFirstofEach,
              style: context.textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const Gap(16),
            Text(
              context.strings.stepsTip,
              style: context.textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
            Gap(32),
            SfSlider(
              min: 0,
              max: 30000,
              value: _steps,
              interval: 5000,
              stepSize: 500,
              showTicks: true,
              showLabels: true,
              enableTooltip: true,
              minorTicksPerInterval: 1,
              onChanged: (dynamic value) => setState(() => _steps = (value as double).toInt()),
            ),
            Gap(32),
            SizedBox(
              width: context.width,
              child: FilledButton.icon(
                onPressed: () {
                  context.read<UserCubit>().saveDesiredSteps(
                        desiredSteps: _steps,
                      );
                  context.push(Routes.onboardingHealthConnectPage);
                },
                label: Text(context.strings.nextStep),
                icon: const Icon(Icons.arrow_forward_ios_rounded),
                iconAlignment: IconAlignment.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

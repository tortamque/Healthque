import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/extensions/string.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:healthque/core/shared/shared.dart';

class OnboardingWaterPage extends StatefulWidget {
  const OnboardingWaterPage({super.key});

  @override
  State<OnboardingWaterPage> createState() => _OnboardingWaterPageState();
}

class _OnboardingWaterPageState extends State<OnboardingWaterPage> {
  double _waterConsumption = 3000;

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
              context.strings.howMuchWaterYouCanDrink.capitalizeFirstofEach,
              style: context.textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const Gap(16),
            Text(
              context.strings.waterTip,
              style: context.textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
            Gap(32),
            SfSlider(
              min: 1000,
              max: 5000,
              value: _waterConsumption,
              interval: 1000,
              stepSize: 100,
              showTicks: true,
              showLabels: true,
              enableTooltip: true,
              minorTicksPerInterval: 1,
              onChanged: (dynamic value) => setState(() => _waterConsumption = value),
            ),
            Gap(32),
            SizedBox(
              width: context.width,
              child: FilledButton.icon(
                onPressed: () {
                  context.read<UserCubit>().saveWaterConsumption(
                        waterConsumption: _waterConsumption.toInt(),
                      );
                  context.push(Routes.onboardingKcalPage);
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/extensions/string.dart';
import 'package:healthque/core/shared/domain/entities/gender_enum.dart';
import 'package:healthque/core/shared/presentation/bloc/user_cubit/user_cubit.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class OnboardingKcalPage extends StatefulWidget {
  const OnboardingKcalPage({super.key});

  @override
  State<OnboardingKcalPage> createState() => _OnboardingKcalPageState();
}

class _OnboardingKcalPageState extends State<OnboardingKcalPage> {
  double _bmr = 0;

  @override
  void initState() {
    super.initState();
    calculateBmr();
  }

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
              context.strings.howMuchKcalYouCanBurn.capitalizeFirstofEach,
              style: context.textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const Gap(16),
            Text(
              context.strings.bmrTip(_bmr.toInt()).capitalizeFirstofEach,
              style: context.textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
            Gap(32),
            SfSlider(
              min: 1000,
              max: 3500,
              value: _bmr,
              interval: 500,
              stepSize: 50,
              showTicks: true,
              showLabels: true,
              enableTooltip: true,
              minorTicksPerInterval: 1,
              onChanged: (dynamic value) => setState(() => _bmr = value),
            ),
            Gap(32),
            SizedBox(
              width: context.width,
              child: ElevatedButton.icon(
                onPressed: calculateBmr,
                label: Text(context.strings.calculateBmrUsingFormula.capitalizeFirstofEach),
                icon: const Icon(Icons.calculate_outlined),
                iconAlignment: IconAlignment.end,
              ),
            ),
            Gap(8),
            SizedBox(
              width: context.width,
              child: FilledButton.icon(
                onPressed: () {
                  context.read<UserCubit>().saveCaloriesBurnInOneDay(
                        caloriesBurnInOneDay: _bmr.toInt(),
                      );
                  context.push(Routes.onboardingStepsPage);
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

  void calculateBmr() {
    final user = context.read<UserCubit>().state.user;
    final gender = user.gender ?? Gender.male;
    final weight = user.weight ?? 70;
    final height = user.height ?? 170;
    final age = user.age ?? 30;

    double calculatedBmr = _calculateBmr(weight: weight, height: height, age: age, gender: gender);
    if (calculatedBmr < 1000) {
      calculatedBmr = 1000;
    } else if (calculatedBmr > 3500) {
      calculatedBmr = 3500;
    }

    setState(() => _bmr = calculatedBmr);
  }

  double _calculateBmr({
    required double weight,
    required double height,
    required int age,
    required Gender gender,
  }) {
    if (gender == Gender.male) {
      return 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age);
    } else {
      return 447.593 + (9.247 * weight) + (3.098 * height) - (4.330 * age);
    }
  }
}

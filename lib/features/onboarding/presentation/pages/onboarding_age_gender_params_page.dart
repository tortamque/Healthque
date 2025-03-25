import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/onboarding/onboarding.dart';

class OnboardingAgeGenderParamsPage extends StatefulWidget {
  const OnboardingAgeGenderParamsPage({super.key});

  @override
  State<OnboardingAgeGenderParamsPage> createState() => _OnboardingAgeGenderParamsPageState();
}

class _OnboardingAgeGenderParamsPageState extends State<OnboardingAgeGenderParamsPage> {
  final TextEditingController ageController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  Gender _selectedGender = Gender.male;

  bool get nextStepAvailable {
    if (ageController.text.isNotEmpty && heightController.text.isNotEmpty && weightController.text.isNotEmpty) {
      final age = int.tryParse(ageController.text) ?? 0;
      final height = double.tryParse(heightController.text) ?? 0;
      final weight = double.tryParse(weightController.text) ?? 0;
      return (age > 0 && age < 120) && (height > 0 && height < 300) && (weight > 0 && weight < 600);
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.strings.letsGetToKnowYouBetter,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Gap(8),
            Text(
              context.strings.noteHeightInCmAndWeightInKg,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[600],
                  ),
            ),
            const Gap(32),
            _AgeWeightHeightSection(
              ageController: ageController,
              heightController: heightController,
              weightController: weightController,
              onChanged: (_) => setState(() {}),
            ),
            const Gap(32),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                context.strings.selectGender,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const Gap(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: RadioListTile<Gender>(
                    contentPadding: EdgeInsets.zero,
                    value: Gender.male,
                    groupValue: _selectedGender,
                    onChanged: (Gender? value) => setState(() => _selectedGender = value!),
                    title: Text(context.strings.male),
                  ),
                ),
                const Gap(16),
                Flexible(
                  child: RadioListTile<Gender>(
                    contentPadding: EdgeInsets.zero,
                    value: Gender.female,
                    groupValue: _selectedGender,
                    onChanged: (Gender? value) => setState(() => _selectedGender = value!),
                    title: Text(context.strings.female),
                  ),
                ),
              ],
            ),
            const Gap(16),
            SizedBox(
              width: context.width,
              child: FilledButton.icon(
                onPressed: nextStepAvailable
                    ? () {
                        context.read<OnboardingCubit>().saveAgeWeightHeightGender(
                              age: int.parse(ageController.text),
                              height: double.parse(heightController.text),
                              weight: double.parse(weightController.text),
                              gender: _selectedGender,
                            );
                        context.push(Routes.onboardingWaterPage);
                      }
                    : null,
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

  @override
  void dispose() {
    ageController.dispose();
    heightController.dispose();
    weightController.dispose();
    super.dispose();
  }
}

class _AgeWeightHeightSection extends StatelessWidget {
  const _AgeWeightHeightSection({
    required this.ageController,
    required this.heightController,
    required this.weightController,
    required this.onChanged,
  });

  final TextEditingController ageController;
  final TextEditingController heightController;
  final TextEditingController weightController;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: CustomTextField(
            controller: ageController,
            onChanged: onChanged,
            labelText: context.strings.age,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
        const Gap(8),
        Flexible(
          child: CustomTextField(
            controller: heightController,
            onChanged: onChanged,
            labelText: context.strings.heightInCm,
            keyboardType: TextInputType.number,
          ),
        ),
        const Gap(8),
        Flexible(
          child: CustomTextField(
            controller: weightController,
            onChanged: onChanged,
            labelText: context.strings.weightInKg,
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/onboarding/onboarding.dart';

class OnboardingNamePage extends StatefulWidget {
  const OnboardingNamePage({super.key});

  @override
  State<OnboardingNamePage> createState() => _OnboardingNamePageState();
}

class _OnboardingNamePageState extends State<OnboardingNamePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    nameController.text = context.read<OnboardingCubit>().state.googleDisplayName ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.strings.letsGetToKnowEachOther,
                style: context.textTheme.headlineMedium,
              ),
              const Gap(32),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  context.strings.enterYourName,
                  style: context.textTheme.bodyLarge,
                ),
              ),
              const Gap(8),
              CustomTextField(
                controller: nameController,
                hintText: context.strings.enterYourName,
                labelText: context.strings.name,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return context.strings.nameCantBeEmpty;
                  }
                  return null;
                },
              ),
              const Gap(16),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  context.strings.enterYourSurname,
                  style: context.textTheme.bodyLarge,
                ),
              ),
              const Gap(8),
              CustomTextField(
                controller: surnameController,
                hintText: context.strings.enterYourSurnameOptional,
                labelText: context.strings.surname,
              ),
              const Gap(32),
              SizedBox(
                width: context.width,
                child: FilledButton.icon(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<OnboardingCubit>().saveNameAndSurname(
                            name: nameController.text,
                            surname: surnameController.text,
                          );
                      context.push(Routes.onboardingAgeGenderParamsPage);
                    }
                  },
                  label: Text(context.strings.nextStep),
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                  iconAlignment: IconAlignment.end,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

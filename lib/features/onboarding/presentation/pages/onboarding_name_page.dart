import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/onboarding/onboarding.dart';

class OnboardingNamePage extends StatelessWidget {
  const OnboardingNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (context, state) {
                return Text(state.email ?? 'null');
              },
            ),
            BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (context, state) {
                return Text(state.avatarUrl ?? 'null');
              },
            ),
          ],
        ),
      ),
    );
  }
}

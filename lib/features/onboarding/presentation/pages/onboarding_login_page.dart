import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/extensions/string.dart';
import 'package:healthque/features/authorization/authorization.dart';
import 'package:healthque/features/onboarding/onboarding.dart';

class OnboardingLoginPage extends StatelessWidget {
  const OnboardingLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state case AuthStateAuthenticated(:final user)) {
            context.read<OnboardingCubit>().saveEmailAndAvatar(
                  user.email ?? '',
                  user.photoURL ?? '',
                );
            print('pushing to onboardingNamePage');
            context.push(Routes.onboardingNamePage);
          }
        },
        child: SizedBox(
          width: context.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.strings.firstThingsFirst,
                style: context.textTheme.headlineMedium,
              ),
              Gap(16),
              Text(
                context.strings.letsCreateAccount.capitalizeFirstofEach,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
              ),
              Gap(32),
              ElevatedButton.icon(
                onPressed: () => context.read<AuthCubit>().signInWithGoogle(),
                label: Text(context.strings.logInWithGoogle),
                icon: const Icon(Icons.login),
              ),
              // REmove
              ElevatedButton.icon(
                onPressed: () => context.read<AuthCubit>().signOut(),
                label: Text('log out'),
                icon: const Icon(Icons.login),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}

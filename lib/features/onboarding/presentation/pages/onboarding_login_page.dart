import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/extensions/string.dart';
import 'package:healthque/core/shared/presentation/presentation.dart';
import 'package:healthque/features/authorization/authorization.dart';

class OnboardingLoginPage extends StatelessWidget {
  const OnboardingLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state case AuthStateAuthenticated(:final user)) {
              context.read<UserCubit>().saveEmailAndAvatar(
                    avatarUrl: user.photoURL ?? '',
                  );
              context.push(Routes.onboardingAgeGenderParamsPage);
            }
          },
          child: SizedBox(
            width: context.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
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
                  Gap(16),
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      return switch (state) {
                        AuthStateLoading() => UnifiedCircularProgressIndicator(),
                        AuthStateAuthenticated() => Column(
                            children: [
                              Text(
                                context.strings.loggedInAs(state.user.displayName ?? state.user.email ?? ''),
                                style: context.textTheme.bodyMedium?.copyWith(
                                  color: Colors.grey[600],
                                ),
                              ),
                              Gap(16),
                              SizedBox(
                                width: context.width,
                                child: FilledButton.icon(
                                  onPressed: () {
                                    final authState = context.read<AuthCubit>().state;
                                    if (authState is AuthStateAuthenticated) {
                                      context.push(Routes.onboardingAgeGenderParamsPage);
                                    }
                                  },
                                  label: Text(context.strings.nextStep),
                                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                                  iconAlignment: IconAlignment.end,
                                ),
                              ),
                              Gap(8),
                              SizedBox(
                                width: context.width,
                                child: FilledButton.tonalIcon(
                                  onPressed: () async {
                                    await context.read<AuthCubit>().signOut();
                                    if (!context.mounted) return;
                                    await context.read<AuthCubit>().signInWithGoogle();
                                  },
                                  label: Text('Log in with another account'),
                                  icon: const Icon(Icons.login),
                                ),
                              ),
                            ],
                          ),
                        _ => Column(
                            children: [
                              SizedBox(
                                width: context.width,
                                child: FilledButton.icon(
                                  onPressed: () => context.read<AuthCubit>().signInWithGoogle(),
                                  label: Text(context.strings.logInWithGoogle),
                                  icon: const Icon(Icons.login),
                                ),
                              ),
                            ],
                          ),
                      };
                    },
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

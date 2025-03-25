import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/features/onboarding/onboarding.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: Routes.onboardingLoginPage,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return BlocProvider<OnboardingCubit>(
          create: (_) => OnboardingCubit(),
          child: child,
        );
      },
      routes: [
        GoRoute(
          path: Routes.onboardingLoginPage,
          builder: (context, state) => const OnboardingLoginPage(),
        ),
        GoRoute(
          path: Routes.onboardingNamePage,
          builder: (context, state) => const OnboardingNamePage(),
        ),
        GoRoute(
          path: Routes.onboardingAgeGenderParamsPage,
          builder: (context, state) => OnboardingAgeGenderParamsPage(),
        ),
        GoRoute(
          path: Routes.onboardingWaterPage,
          builder: (context, state) => OnboardingWaterPage(),
        ),
        GoRoute(
          path: Routes.onboardingKcalPage,
          builder: (context, state) => OnboardingKcalPage(),
        ),
        GoRoute(
          path: Routes.onboardingStepsPage,
          builder: (context, state) => OnboardingStepsPage(),
        ),
        GoRoute(
          path: Routes.onboardingHealthConnectPage,
          builder: (context, state) => OnboardingHealthConnectPage(),
        ),
      ],
    ),

    /*StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => AuthLayout(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.authPage,
              builder: (context, state) => const AuthPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.userInfoPage,
              builder: (context, state) => const UserInfoPage(),
            ),
          ],
        ),
      ],
    ),*/
  ],
);

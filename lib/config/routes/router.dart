import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/features/onboarding/onboarding.dart';
import 'package:healthque/features/temp/temp.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: Routes.onboardingLoginPage,
  routes: [
    ShellRoute(
      builder: (context, state, child) => child,
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
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => TempPagesLayout(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.tempPage1,
              builder: (context, state) => const TempPage1(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.tempPage2,
              builder: (context, state) => const TempPage2(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.tempPage3,
              builder: (context, state) => const TempPage3(),
            ),
          ],
        ),
      ],
    ),
  ],
);

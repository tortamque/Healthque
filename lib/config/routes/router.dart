import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/features/onboarding/onboarding.dart';
import 'package:healthque/features/splash/splash.dart';
import 'package:healthque/features/temp/temp.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: Routes.splashScreen,
  routes: [
    GoRoute(
      path: Routes.splashScreen,
      builder: (context, state) => const SplashScreen(),
    ),
    ShellRoute(
      builder: (context, state, child) => child,
      routes: [
        GoRoute(
          path: Routes.onboardingLoginPage,
          builder: (context, state) => const OnboardingLoginPage(),
        ),
        GoRoute(
          path: Routes.onboardingNamePage,
          builder: (context, state) {
            final extra = state.extra as String;

            return OnboardingNamePage(firstName: extra);
          },
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
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.tempPage4,
              builder: (context, state) => const TempPage4(),
            ),
          ],
        ),
      ],
    ),
  ],
);

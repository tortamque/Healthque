import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/injection_container.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/activity/activity.dart';
import 'package:healthque/features/dashboard/dashboard.dart';
import 'package:healthque/features/onboarding/onboarding.dart';
import 'package:healthque/features/splash/splash.dart';
import 'package:healthque/features/temp/temp.dart';

import '../../features/health/health.dart';

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
      builder: (context, state, navigationShell) => MainPagesLayout(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.dashboardPage,
              builder: (context, state) => const DashboardPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.activityPage,
              builder: (context, state) => const ActivityPage(),
            ),
            GoRoute(
              path: Routes.addWorkoutPage,
              builder: (context, state) => const AddWorkoutPage(),
            ),
            GoRoute(
              path: Routes.savedWorkoutsPage,
              builder: (context, state) => SavedWorkoutsPage(),
            ),
            GoRoute(
              path: Routes.workoutDetailsPage,
              builder: (context, state) => SavedWorkoutDetailsPage(
                workout: state.extra as Workout,
              ),
            ),
            GoRoute(
              path: Routes.workoutReminderPage,
              builder: (context, state) => const WorkoutReminderPage(),
            ),
            GoRoute(
              path: Routes.workoutRemindersListPage,
              builder: (context, state) => const WorkoutRemindersListPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.healthPage,
              builder: (context, state) => const HealthPage(),
            ),
            GoRoute(
              path: Routes.medicationTracking,
              builder: (context, state) => BlocProvider(
                create: (context) => MedicationTrackingCubit(sl(), sl(), sl())..fetchMedications(),
                child: const MedicationTrackingPage(),
              ),
            ),
            GoRoute(
              path: Routes.courseTreatmentList,
              builder: (context, state) => BlocProvider(
                create: (context) => CourseTreatmentCubit(sl(), sl(), sl())..fetchCourses(),
                child: const CoursesListPage(),
              ),
            ),
            GoRoute(
              path: Routes.addCourseTreatment,
              builder: (context, state) => BlocProvider(
                create: (context) => CourseTreatmentCubit(sl(), sl(), sl())..fetchCourses(),
                child: const AddCourseTreatmentPage(),
              ),
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

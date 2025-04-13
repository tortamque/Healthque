import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/injection_container.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/activity/activity.dart';
import 'package:healthque/features/dashboard/dashboard.dart';
import 'package:healthque/features/health/health.dart';
import 'package:healthque/features/health/presentation/pages/blood_sugar_tracking_page.dart';
import 'package:healthque/features/onboarding/onboarding.dart';
import 'package:healthque/features/profile/profile.dart';
import 'package:healthque/features/splash/splash.dart';

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

            // Medication Tracking
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

            // Water Tracking
            GoRoute(
              path: Routes.waterRecordsList,
              builder: (context, state) => BlocProvider(
                create: (context) => WaterTrackingCubit(sl(), sl(), sl())..fetchWaterRecords(),
                child: const WaterRecordsListPage(),
              ),
            ),
            GoRoute(
              path: Routes.addWaterRecord,
              builder: (context, state) => BlocProvider(
                create: (context) => WaterTrackingCubit(sl(), sl(), sl()),
                child: const AddWaterRecordPage(),
              ),
            ),
            GoRoute(
              path: Routes.waterReminder,
              builder: (context, state) => const WaterRemindersPage(),
            ),

            // Temperature Tracking
            GoRoute(
              path: Routes.temperatureTracking,
              builder: (context, state) => BlocProvider(
                create: (context) => TemperatureTrackingCubit(sl(), sl(), sl())..fetchTemperatureRecords(),
                child: const TemperatureTrackingPage(),
              ),
            ),
            GoRoute(
              path: Routes.addTemperatureTrack,
              builder: (context, state) => BlocProvider(
                create: (context) => TemperatureTrackingCubit(sl(), sl(), sl()),
                child: const AddTemperaturePage(),
              ),
            ),
            GoRoute(
              path: Routes.temperatureReminder,
              builder: (context, state) => const TemperatureRemindersPage(),
            ),

            // Blood Pressure Tracking
            GoRoute(
              path: Routes.bloodPressurePage,
              builder: (context, state) => BlocProvider(
                create: (context) => BloodPressureTrackingCubit(sl(), sl(), sl())..fetchBloodPressureRecords(),
                child: const BloodPressurePage(),
              ),
            ),
            GoRoute(
              path: Routes.addBloodPressurePage,
              builder: (context, state) => BlocProvider(
                create: (context) => BloodPressureTrackingCubit(sl(), sl(), sl()),
                child: const AddBloodPressurePage(),
              ),
            ),
            GoRoute(
              path: Routes.bloodPressureReminder,
              builder: (context, state) => const BloodPressureRemindersPage(),
            ),

            // Stress and mood Tracking
            GoRoute(
              path: Routes.stressAndMoodPage,
              builder: (context, state) => BlocProvider(
                create: (context) => StressMoodTrackingCubit(sl(), sl(), sl())..fetchStressMoodRecords(),
                child: const StressMoodDisplayPage(),
              ),
            ),
            GoRoute(
              path: Routes.addStressAndMoodPage,
              builder: (context, state) => BlocProvider(
                create: (context) => StressMoodTrackingCubit(sl(), sl(), sl()),
                child: const StressMoodEntryPage(),
              ),
            ),

            // Sleep analysis
            GoRoute(
              path: Routes.sleepAnalysisPage,
              builder: (context, state) => const SleepAnalysisPage(),
            ),
            GoRoute(
              path: Routes.sleepScoreInfoPage,
              builder: (context, state) {
                final extra = state.extra as SleepScoreInfoPageExtra;

                return SleepScoreInfoPage(
                  score: extra.score,
                  scoreLabel: extra.scoreLabel,
                );
              },
            ),
            GoRoute(
              path: Routes.sleepStatisticsInfoPage,
              builder: (context, state) {
                final extra = state.extra as SleepStatisticsInfoPageExtra;

                return SleepStatisticsInfoPage(
                  efficiency: extra.efficiency,
                  awake: extra.awake,
                  deep: extra.deep,
                  rem: extra.rem,
                  light: extra.light,
                );
              },
            ),
            GoRoute(
              path: Routes.sleepLengthsInfoPage,
              builder: (context, state) {
                final extra = state.extra as SleepStageLengthsInfoPageExtra;

                return SleepStageLengthsInfoPage(
                  awakeMinutes: extra.awakeMinutes,
                  deepMinutes: extra.deepMinutes,
                  remMinutes: extra.remMinutes,
                  lightMinutes: extra.lightMinutes,
                );
              },
            ),

            // Blood Sugar Tracking
            GoRoute(
              path: Routes.bloodSugarTracking,
              builder: (context, state) => BlocProvider(
                create: (context) => BloodSugarTrackingCubit(sl(), sl(), sl())..fetchBloodSugarRecords(),
                child: const BloodSugarTrackingPage(),
              ),
            ),
            GoRoute(
              path: Routes.addBloodSugarTrack,
              builder: (context, state) => BlocProvider(
                create: (context) => BloodSugarTrackingCubit(sl(), sl(), sl()),
                child: const AddBloodSugarPage(),
              ),
            ),
            GoRoute(
              path: Routes.bloodSugarReminder,
              builder: (context, state) => const BloodSugarRemindersPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.profilePage,
              builder: (context, state) => const ProfilePage(),
            ),
          ],
        ),
      ],
    ),
  ],
);

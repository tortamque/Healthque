import 'package:timezone/data/latest.dart' as tz;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/config/routes/router.dart';
import 'package:healthque/config/theme/theme.dart';
import 'package:healthque/core/localization/generated/l10n.dart';
import 'package:healthque/core/injection_container.dart';
import 'package:healthque/core/utils/utils.dart';
import 'package:healthque/features/activity/activity.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:toastification/toastification.dart';
import 'core/shared/shared.dart';
import 'features/authorization/authorization.dart';
import 'features/health/health.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'features/profile/profile.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  await LocalNotificationService().init();
  await SharedPreferencesManager.init();
  await _initHive();
  initializeDependencies();
  await _initHiveManagers();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const HealthqueApp());
}

class HealthqueApp extends StatelessWidget {
  const HealthqueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit(sl(), sl())),
        BlocProvider<AuthCubit>(create: (_) => AuthCubit()),
        BlocProvider<HealthCubit>(create: (_) => HealthCubit()),
        BlocProvider<UserCubit>(create: (_) => UserCubit(sl(), sl())),
        BlocProvider<ActivityCubit>(
          create: (_) => ActivityCubit(sl(), sl(), sl())..fetchWorkouts(),
          lazy: false,
        ),
        BlocProvider<RemindersCubit>(
          create: (_) => RemindersCubit(sl(), sl(), sl())..fetchNotifications(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, Color>(
        builder: (context, state) {
          final themeColor = state;
          return ToastificationWrapper(
            child: AnimatedTheme(
              data: themeData(color: themeColor),
              duration: const Duration(milliseconds: 300),
              child: MaterialApp.router(
                theme: themeData(color: themeColor),
                routerConfig: router,
                localizationsDelegates: [
                  Strings.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: Strings.delegate.supportedLocales,
                locale: const Locale('en'),
              ),
            ),
          );
        },
      ),
    );
  }
}

Future<void> _initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(GenderAdapter());
  Hive.registerAdapter(WorkoutAdapter());
  Hive.registerAdapter(WorkoutTypeAdapter());
  Hive.registerAdapter(WorkoutsAdapter());
  Hive.registerAdapter(LocalNotificationAdapter());
  Hive.registerAdapter(LocalNotificationsAdapter());
  Hive.registerAdapter(LocalNotificationTypeAdapter());
  Hive.registerAdapter(MedicationTypeAdapter());
  Hive.registerAdapter(MedicationAdapter());
  Hive.registerAdapter(MedicationsAdapter());
  Hive.registerAdapter(CourseTreatmentsAdapter());
  Hive.registerAdapter(CourseTreatmentEntryAdapter());
  Hive.registerAdapter(CourseTreatmentAdapter());
  Hive.registerAdapter(DateTimeComponentsAdapter());
  Hive.registerAdapter(WaterRecordAdapter());
  Hive.registerAdapter(WaterRecordsAdapter());
  Hive.registerAdapter(TemperatureRecordsAdapter());
  Hive.registerAdapter(TemperatureRecordAdapter());
  Hive.registerAdapter(BloodPressureRecordAdapter());
  Hive.registerAdapter(BloodPressureRecordsAdapter());
  Hive.registerAdapter(ThemePreferenceAdapter());
  Hive.registerAdapter(StressMoodRecordAdapter());
  Hive.registerAdapter(StressMoodRecordsAdapter());
  Hive.registerAdapter(BloodSugarRecordAdapter());
  Hive.registerAdapter(BloodSugarRecordsAdapter());
}

Future<void> _initHiveManagers() async {
  await sl<UserHiveManager>().init();
  await sl<WorkoutsHiveManager>().init();
  await sl<NotificationsHiveManager>().init();
  await sl<MedicationTrackingHiveManager>().init();
  await sl<CourseTreatmentHiveManager>().init();
  await sl<WaterTrackingHiveManager>().init();
  await sl<TemperatureTrackingHiveManager>().init();
  await sl<BloodPressureTrackingHiveManager>().init();
  await sl<ThemePreferenceHiveManager>().init();
  await sl<StressMoodTrackingHiveManager>().init();
  await sl<BloodSugarTrackingHiveManager>().init();
}

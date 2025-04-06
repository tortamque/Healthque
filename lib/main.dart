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
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  await LocalNotificationService().init();
  await SharedPreferencesManager.init();
  await _initHive();
  initializeDependencies();
  await sl<UserHiveManager>().init();
  await sl<WorkoutsHiveManager>().init();
  await sl<NotificationsHiveManager>().init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const HealthqueApp());
}

class HealthqueApp extends StatelessWidget {
  const HealthqueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
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
      child: ToastificationWrapper(
        child: MaterialApp.router(
          theme: themeData,
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
}

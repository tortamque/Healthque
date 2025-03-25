import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/config/routes/router.dart';
import 'package:healthque/config/theme/theme.dart';
import 'package:healthque/core/localization/generated/l10n.dart';
import 'package:healthque/core/injection_container.dart';
import 'features/authorization/authorization.dart';
import 'features/health/health.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDependencies();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const HealthqueApp());
}

class HealthqueApp extends StatelessWidget {
  const HealthqueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthCubit()),
        BlocProvider(create: (_) => HealthCubit()),
      ],
      child: MaterialApp.router(
        theme: themeData,
        routerConfig: router,
        localizationsDelegates: [AppLocalizationDelegate()],
        supportedLocales: Strings.delegate.supportedLocales,
        locale: const Locale('en'),
      ),
    );
  }
}

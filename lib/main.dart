import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/config/routes/router.dart';
import 'package:healthque/core/localization/generated/l10n.dart';
import 'package:healthque/features/authorization/presentation/bloc/auth_bloc.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const HealthqueApp());
}

class HealthqueApp extends StatelessWidget {
  const HealthqueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthCubit(),
      child: MaterialApp.router(
        routerConfig: router,
        localizationsDelegates: [AppLocalizationDelegate()],
        supportedLocales: Strings.delegate.supportedLocales,
        locale: const Locale('en'),
      ),
    );
  }
}

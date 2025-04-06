import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/utils/shared_preferences/shared_preferences.dart';
import 'package:healthque/features/health/health.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _checkOnboardingCompletion(),
    );
  }

  void _checkOnboardingCompletion() {
    final storedUser = SharedPreferencesManager.retrieveValue<bool>(
          isOnboardingCompleted,
        ) ??
        false;

    if (storedUser) {
      context.read<HealthCubit>().fetchHealthData(
            customStart: DateTime.now().subtract(Duration(days: 6)).copyWith(
                  hour: 0,
                  minute: 0,
                  second: 0,
                  millisecond: 0,
                ),
            customEnd: DateTime.now(),
          );
      context.go(Routes.dashboardPage);
    } else {
      context.go(Routes.onboardingLoginPage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

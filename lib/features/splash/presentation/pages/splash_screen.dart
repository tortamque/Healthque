import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/utils/shared_preferences/shared_preferences.dart';

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
      context.go(Routes.tempPage1);
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

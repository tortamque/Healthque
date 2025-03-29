import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/extensions/string.dart';
import 'package:healthque/core/shared/presentation/presentation.dart';
import 'package:healthque/core/utils/shared_preferences/shared_preferences.dart';
import 'package:healthque/features/health/health.dart';
import 'package:healthque/core/assets.gen.dart';

class OnboardingHealthConnectPage extends StatelessWidget {
  const OnboardingHealthConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HealthConnectionCubit()..checkHealthConnectStatus(throttle: true),
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: BlocBuilder<HealthConnectionCubit, HealthConnectionState>(
            builder: (context, state) {
              return switch (state) {
                HealthConnectionStateInitial() || HealthConnectionStateLoading() => _LoadingLayout(),
                HealthConnectionStateConnected() => _ConnectedLayout(),
                HealthConnectionStateError(:final message) => _ErrorLayout(message: message),
              };
            },
          ),
        ),
      ),
    );
  }
}

class _LoadingLayout extends StatelessWidget {
  const _LoadingLayout();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.strings.connectingToYourDevice.capitalizeFirstofEach,
            style: context.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          Gap(8),
          Text(
            context.strings.thisProcessMayTakeAFewSeconds,
            style: context.textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
            textAlign: TextAlign.center,
          ),
          Gap(32),
          Assets.watch.image(width: 250),
          Gap(32),
          UnifiedCircularProgressIndicator(),
        ],
      ),
    );
  }
}

class _ConnectedLayout extends StatelessWidget {
  const _ConnectedLayout();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.strings.yourWearableDeviceIsConnected.capitalizeFirstofEach,
            style: context.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          Gap(8),
          Text(
            context.strings.youCanNowProceedToTheNextStep,
            style: context.textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
            textAlign: TextAlign.center,
          ),
          Gap(32),
          Assets.watch.image(width: 250),
          Gap(32),
          SizedBox(
            width: context.width,
            child: FilledButton.icon(
              onPressed: () async {
                await context.read<UserCubit>().storeUser();
                await SharedPreferencesManager.storeValue<bool>(isOnboardingCompleted, true);
                if (!context.mounted) return;

                context.read<HealthCubit>().fetchHealthData(
                      customStart: DateTime.now()
                          .subtract(Duration(days: 6))
                          .copyWith(hour: 0, minute: 0, second: 0, millisecond: 0),
                      customEnd: DateTime.now(),
                    );
                context.go(Routes.tempPage1);
              },
              label: Text(context.strings.finishOnboarding.capitalizeFirstofEach),
              icon: const Icon(Icons.arrow_forward_ios_rounded),
              iconAlignment: IconAlignment.end,
            ),
          ),
        ],
      ),
    );
  }
}

class _ErrorLayout extends StatelessWidget {
  const _ErrorLayout({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.strings.oopsSomethingWentWrong,
            style: context.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          Gap(8),
          Text(
            message,
            style: context.textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
            textAlign: TextAlign.center,
          ),
          Gap(32),
          Assets.watch.image(width: 250),
        ],
      ),
    );
  }
}

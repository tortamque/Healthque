import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/presentation/widgets/widgets.dart';
import 'package:healthque/features/dashboard/dashboard.dart';
import 'package:healthque/features/health/health.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.dashboard),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: BlocBuilder<HealthCubit, HealthState>(
            buildWhen: (previous, current) => previous != current,
            builder: (context, state) {
              return switch (state) {
                HealthStateInitial() || HealthStateLoading() => const Center(
                    child: UnifiedCircularProgressIndicator(),
                  ),
                HealthStateLoaded(
                  :final steps,
                  :final calories,
                  :final distance,
                  :final sleep,
                  :final workout,
                  :final heartRate,
                  :final bloodOxygen,
                ) =>
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          context.strings.yourActivities,
                          style: context.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.normal),
                        ),
                      ),
                      Gap(16),
                      DashboardItemTemplate(
                        icon: Icons.directions_walk_rounded,
                        title: context.strings.steps,
                        outerPadding: const EdgeInsets.only(top: 16, left: 16),
                        innerPadding: EdgeInsets.zero,
                        child: StepsBarChart(records: steps),
                      ),
                      DashboardItemTemplate(
                        icon: Icons.bed_outlined,
                        title: context.strings.sleep,
                        outerPadding: const EdgeInsets.only(top: 16, left: 16),
                        innerPadding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: SleepLineChart(sleepRecords: sleep),
                      ),
                    ],
                  ),
                HealthStateError(:final message) => Center(child: Text(message)),
              };
            },
          ),
        ),
      ),
    );
  }
}

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
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
                        icon: Icons.bedtime_rounded,
                        title: context.strings.sleep,
                        innerPadding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: SleepLineChart(sleepRecords: sleep),
                      ),
                      Gap(8),
                      DashboardItemTemplate(
                        icon: Icons.directions_walk_rounded,
                        title: context.strings.steps,
                        child: StepsBarChart(records: steps),
                      ),
                      Gap(8),
                      DashboardItemTemplate(
                        icon: Icons.location_on,
                        title: context.strings.distance,
                        innerPadding: const EdgeInsets.only(left: 10),
                        child: DistanceLineChart(distanceRecords: distance),
                      ),
                      Gap(8),
                      DashboardItemTemplate(
                        icon: Icons.local_fire_department_rounded,
                        title: context.strings.caloriesBurnedDuringWorkouts,
                        innerPadding: const EdgeInsets.only(left: 10),
                        child: CaloriesPieChart(caloriesRecords: calories),
                      ),
                      Gap(8),
                      DashboardItemTemplate(
                        icon: Icons.opacity_rounded,
                        title: context.strings.bloodOxygenSaturation,
                        innerPadding: const EdgeInsets.only(left: 10),
                        child: BloodOxygenLineChart(bloodOxygenRecords: bloodOxygen),
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

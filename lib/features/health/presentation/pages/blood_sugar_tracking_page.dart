import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';

class BloodSugarTrackingPage extends StatelessWidget {
  const BloodSugarTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BloodSugarTrackingCubit, BloodSugarTrackingState>(
      builder: (context, state) {
        final records = state.records?.records ?? [];

        return Scaffold(
          appBar: AppBar(
            title: Text(context.strings.bloodSugarTracking),
            actions: [
              IconButton(
                icon: const Icon(Icons.alarm_rounded),
                onPressed: () => context.push(Routes.bloodSugarReminder),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => context.push(Routes.addBloodSugarTrack).then((_) {
              if (!context.mounted) return;
              context.read<BloodSugarTrackingCubit>().fetchBloodSugarRecords();
            }),
            child: const Icon(Icons.add_rounded),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Gap(16),
                  BloodSugarLineChart(records: records),
                  Gap(8),
                  BloodSugarRecordsList(),
                  Gap(62),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

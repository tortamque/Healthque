import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/features/health/health.dart';
import 'package:healthque/core/extensions/context.dart';

class TemperatureTrackingPage extends StatelessWidget {
  const TemperatureTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TemperatureTrackingCubit, TemperatureTrackingState>(
      builder: (context, state) {
        final records = state.records?.records ?? [];

        return Scaffold(
          appBar: AppBar(
            title: Text(context.strings.temperatureTracking),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => context.push(Routes.addTemperatureTrack).then((_) {
              if (!context.mounted) return;
              context.read<TemperatureTrackingCubit>().fetchTemperatureRecords();
            }),
            child: Icon(Icons.add_rounded),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Gap(16),
                  TemperatureLineChart(records: records),
                  const Gap(8),
                  const TemperatureRecordsList(),
                  const Gap(62),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/features/health/health.dart';
import 'package:healthque/core/extensions/context.dart';

class BloodPressurePage extends StatelessWidget {
  const BloodPressurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.bloodPressureTracking),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(Routes.addBloodPressurePage).then((_) {
          if (!context.mounted) return;
          context.read<BloodPressureTrackingCubit>().fetchBloodPressureRecords();
        }),
        child: Icon(Icons.add_rounded),
      ),
      body: BlocBuilder<BloodPressureTrackingCubit, BloodPressureTrackingState>(
        builder: (context, state) {
          final records = state.records.records;

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Gap(32),
                  BloodPressureLineChart(records: records),
                  Gap(16),
                  BloodPressureRecordsList(),
                  Gap(62),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

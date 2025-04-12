import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/features/health/health.dart';
import 'package:healthque/core/extensions/context.dart';

class StressMoodDisplayPage extends StatelessWidget {
  const StressMoodDisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.stressAndMoodTracking),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(Routes.addStressAndMoodPage).then((_) {
          if (!context.mounted) return;
          context.read<StressMoodTrackingCubit>().fetchStressMoodRecords();
        }),
        child: Icon(Icons.add_rounded),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: const [
              StressGraphSection(),
              Gap(16),
              MoodGraphSection(),
              Gap(16),
              StressMoodRecordsList(),
              Gap(62),
            ],
          ),
        ),
      ),
    );
  }
}

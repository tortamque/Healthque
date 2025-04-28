import 'package:flutter/material.dart';
import 'package:healthque/features/health/health.dart';
import 'package:healthque/core/extensions/context.dart';

class StressMoodEntryPage extends StatelessWidget {
  const StressMoodEntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.addStressAndMoodMeasurement),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: const StressMoodEntryCard(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:healthque/core/extensions/context.dart';

class MedicationTrackingPage extends StatelessWidget {
  const MedicationTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.medicationTracking),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Placeholder(),
        ),
      ),
    );
  }
}

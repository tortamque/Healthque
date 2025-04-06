import 'package:flutter/material.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Temp Page 3'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              HealthActionCard(
                title: context.strings.medicationTracking,
                subtitle: context.strings.medicationTrackingDescription,
                icon: Icons.medical_services,
                onTap: () {
                  print('Medication Tracking tapped');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

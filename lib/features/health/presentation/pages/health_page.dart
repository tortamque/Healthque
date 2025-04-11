import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';
export 'temperature_tracking_page.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.health),
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
                onTap: () => context.push(Routes.medicationTracking),
              ),
              HealthActionCard(
                title: context.strings.waterTracking,
                subtitle: context.strings.waterTrackingDescription,
                icon: Icons.water_drop_rounded,
                onTap: () => context.push(Routes.waterRecordsList),
              ),
              HealthActionCard(
                title: context.strings.temperatureMeasurement,
                subtitle: context.strings.temperatureMeasurementDescription,
                icon: Icons.thermostat_outlined,
                onTap: () => context.push(Routes.temperatureTracking),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';
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
              ActionCard(
                title: context.strings.medicationTracking,
                subtitle: context.strings.medicationTrackingDescription,
                icon: Icons.medical_services,
                onTap: () => context.push(Routes.medicationTracking),
              ),
              ActionCard(
                title: context.strings.waterTracking,
                subtitle: context.strings.waterTrackingDescription,
                icon: Icons.water_drop_rounded,
                onTap: () => context.push(Routes.waterRecordsList),
              ),
              ActionCard(
                title: context.strings.temperatureMeasurement,
                subtitle: context.strings.temperatureMeasurementDescription,
                icon: Icons.thermostat_outlined,
                onTap: () => context.push(Routes.temperatureTracking),
              ),
              ActionCard(
                title: context.strings.bloodPressureTracking,
                subtitle: context.strings.bloodPressureTrackingDescription,
                icon: Icons.bloodtype_rounded,
                onTap: () => context.push(Routes.bloodPressurePage),
              ),
              ActionCard(
                title: 'Stress and Mood Tracking',
                subtitle:
                    'Mood is the way someone feels due to a variety of thought, reactions or emotions over a long period of time',
                icon: Icons.emoji_emotions_rounded,
                onTap: () => context.push(Routes.stressAndMoodPage),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

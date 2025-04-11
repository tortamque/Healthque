import 'package:flutter/material.dart';
import 'package:healthque/features/health/health.dart';
import 'package:healthque/core/extensions/context.dart';

class AddTemperaturePage extends StatelessWidget {
  const AddTemperaturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.addMeasurement),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: const TemperatureEntryForm(),
          ),
        ),
      ),
    );
  }
}

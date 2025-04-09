import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:toastification/toastification.dart';

class TemperatureRecordsList extends StatelessWidget {
  const TemperatureRecordsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TemperatureTrackingCubit, TemperatureTrackingState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        final records = state.records;
        if (records == null || records.records.isEmpty) {
          return Center(child: Text(context.strings.noMeasurements));
        }
        return ListView.separated(
          itemCount: records.records.length,
          separatorBuilder: (_, __) => const Gap(12),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final record = records.records[index];
            final timeStr = DateFormat('dd.MM.yyyy HH:mm').format(record.measurementTime);
            return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                title: Text(
                  '${record.temperature.toStringAsFixed(1)} °C',
                  style: context.textTheme.headlineSmall,
                ),
                subtitle: Text(
                  timeStr,
                  style: context.textTheme.bodySmall,
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  color: context.theme.colorScheme.primary,
                  onPressed: () async {
                    await context.read<TemperatureTrackingCubit>().deleteTemperatureRecord(record);
                    if (!context.mounted) return;
                    toastification.show(
                      context: context,
                      style: ToastificationStyle.simple,
                      type: ToastificationType.success,
                      title: Text(context.strings.measurementDeleted),
                      alignment: Alignment.bottomCenter,
                      closeButton: ToastCloseButton(
                        buttonBuilder: (context, onClose) => const SizedBox.shrink(),
                      ),
                      autoCloseDuration: const Duration(seconds: 3),
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}

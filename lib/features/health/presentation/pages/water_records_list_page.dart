import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/features/health/health.dart';
import 'package:intl/intl.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:toastification/toastification.dart';

class WaterRecordsListPage extends StatelessWidget {
  const WaterRecordsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.waterTracking),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(Routes.addWaterRecord).then((_) {
          if (!context.mounted) return;
          context.read<WaterTrackingCubit>().fetchWaterRecords();
        }),
        child: Icon(Icons.add_rounded),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<WaterTrackingCubit, WaterTrackingState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            final records = state.records.records;
            if (records.isEmpty) {
              return Center(
                child: Text(
                  context.strings.noWaterRecords,
                  style: context.textTheme.bodyLarge,
                ),
              );
            }
            return ListView.separated(
              itemCount: records.length,
              separatorBuilder: (_, __) => const Gap(12),
              itemBuilder: (context, index) {
                final record = records[index];
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: ListTile(
                    title: Text(
                      '${record.amount.toStringAsFixed(2)} L',
                      style: context.textTheme.headlineSmall,
                    ),
                    subtitle: Text(
                      DateFormat('dd.MM.yyyy HH:mm').format(record.datetime),
                      style: context.textTheme.bodySmall,
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      color: Colors.red,
                      onPressed: () async {
                        await context.read<WaterTrackingCubit>().deleteWaterRecord(record);

                        if (!context.mounted) return;
                        toastification.show(
                          context: context,
                          style: ToastificationStyle.simple,
                          type: ToastificationType.success,
                          title: Text(context.strings.waterRecordDeleted),
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
        ),
      ),
    );
  }
}

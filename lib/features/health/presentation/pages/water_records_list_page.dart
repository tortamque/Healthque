import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/config/routes/routes.dart';
import 'package:healthque/features/health/health.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:intl/intl.dart';
import 'package:toastification/toastification.dart';

class WaterRecordsListPage extends StatefulWidget {
  const WaterRecordsListPage({super.key});

  @override
  State<WaterRecordsListPage> createState() => _WaterRecordsListPageState();
}

class _WaterRecordsListPageState extends State<WaterRecordsListPage> {
  DateTime? _filterDate;

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
        child: const Icon(Icons.add_rounded),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<WaterTrackingCubit, WaterTrackingState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            final List<WaterRecord> records = List.from(state.records.records)
              ..sort((a, b) => b.datetime.compareTo(a.datetime));

            final filteredRecords = _filterDate != null
                ? records.where((record) {
                    final recordDate = DateFormat('yyyy-MM-dd').format(record.datetime);
                    final filterDate = DateFormat('yyyy-MM-dd').format(_filterDate!);
                    return recordDate == filterDate;
                  }).toList()
                : records;

            return SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        onPressed: () => _pickFilterDate(context),
                        child: Text(
                          _filterDate != null
                              ? DateFormat('dd.MM.yyyy').format(_filterDate!)
                              : context.strings.selectDate,
                        ),
                      ),
                      if (_filterDate != null)
                        TextButton(
                          onPressed: _clearFilter,
                          child: Text(context.strings.clearFilter),
                        ),
                    ],
                  ),
                  const Gap(16),
                  if (_filterDate == null) ...[
                    WaterLineChart(records: records),
                    const Gap(16),
                  ],
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: filteredRecords.length,
                    separatorBuilder: (_, __) => const Gap(12),
                    itemBuilder: (context, index) {
                      final record = filteredRecords[index];
                      return Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                          title: Text(
                            _formatWater(record.amount, context),
                            style: context.textTheme.headlineSmall,
                          ),
                          subtitle: Text(
                            DateFormat('dd.MM.yyyy HH:mm').format(record.datetime),
                            style: context.textTheme.bodySmall,
                          ),
                          trailing: IconButton(
                            padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                            icon: const Icon(Icons.delete),
                            color: context.theme.colorScheme.primary,
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
                  ),
                  const Gap(62),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  String _formatWater(double amount, BuildContext context) {
    final double ml = amount * 1000;
    if (ml < 1000) {
      return context.strings.amountMl(ml);
    } else {
      return context.strings.amountL(amount.toStringAsFixed(2));
    }
  }

  Future<void> _pickFilterDate(BuildContext context) async {
    final now = DateTime.now();
    final selected = await showDatePicker(
      context: context,
      initialDate: _filterDate ?? now,
      firstDate: now.subtract(const Duration(days: 365)),
      lastDate: now.add(const Duration(days: 365)),
    );
    if (selected != null) {
      setState(() {
        _filterDate = selected;
      });
    }
  }

  void _clearFilter() {
    setState(() {
      _filterDate = null;
    });
  }
}

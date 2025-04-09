import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/features/health/health.dart';

part 'temperature_tracking_state.dart';
part 'temperature_tracking_cubit.freezed.dart';

class TemperatureTrackingCubit extends Cubit<TemperatureTrackingState> {
  final GetTemperatureRecordsUseCase getTemperatureRecordsUseCase;
  final SaveTemperatureRecordsUseCase saveTemperatureRecordsUseCase;
  final DeleteTemperatureRecordUseCase deleteTemperatureRecordUseCase;

  TemperatureTrackingCubit(
    this.getTemperatureRecordsUseCase,
    this.saveTemperatureRecordsUseCase,
    this.deleteTemperatureRecordUseCase,
  ) : super(TemperatureTrackingState());

  void fetchTemperatureRecords() {
    emit(state.copyWith(isLoading: true));
    final records = getTemperatureRecordsUseCase(null);
    TemperatureRecords? sortedRecords;
    if (records != null) {
      final mutableRecords = List<TemperatureRecord>.from(records.records);
      mutableRecords.sort(
        (a, b) => b.measurementTime.compareTo(a.measurementTime),
      );
      sortedRecords = records.copyWith(records: mutableRecords);
    }
    emit(state.copyWith(isLoading: false, records: sortedRecords));
  }

  Future<void> addTemperatureRecord({
    required double temperature,
    required DateTime measurementTime,
  }) async {
    final currentRecords = getTemperatureRecordsUseCase(null) ?? TemperatureRecords(records: []);

    final newId = currentRecords.records.length + 1;

    final newRecord = TemperatureRecord(
      id: newId,
      measurementTime: measurementTime,
      temperature: temperature,
    );

    final newRecordsList = List<TemperatureRecord>.from(currentRecords.records)..add(newRecord);
    newRecordsList.sort((a, b) => b.measurementTime.compareTo(a.measurementTime));

    final updatedRecords = TemperatureRecords(records: newRecordsList);
    await saveTemperatureRecordsUseCase(updatedRecords);
    emit(state.copyWith(records: updatedRecords));
  }

  Future<void> deleteTemperatureRecord(TemperatureRecord record) async {
    await deleteTemperatureRecordUseCase(record);
    fetchTemperatureRecords();
  }
}

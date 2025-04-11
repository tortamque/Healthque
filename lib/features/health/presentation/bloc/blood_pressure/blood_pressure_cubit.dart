import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/features/health/health.dart';

part 'blood_pressure_state.dart';
part 'blood_pressure_cubit.freezed.dart';

class BloodPressureTrackingCubit extends Cubit<BloodPressureTrackingState> {
  final GetBloodPressureRecordsUseCase _getBloodPressureRecordsUseCase;
  final SaveBloodPressureRecordsUseCase _saveBloodPressureRecordsUseCase;
  final DeleteBloodPressureRecordUseCase _deleteBloodPressureRecordUseCase;

  static const int systolicThreshold = 180;
  static const int diastolicThreshold = 120;

  BloodPressureTrackingCubit(
    this._getBloodPressureRecordsUseCase,
    this._saveBloodPressureRecordsUseCase,
    this._deleteBloodPressureRecordUseCase,
  ) : super(BloodPressureTrackingState());

  void fetchBloodPressureRecords() {
    emit(state.copyWith(isLoading: true, isHighBloodPressure: false));
    final records = _getBloodPressureRecordsUseCase(null);
    BloodPressureRecords? sortedRecords;

    if (records != null) {
      final mutableRecords = List<BloodPressureRecord>.from(records.records);
      mutableRecords.sort((a, b) => b.measurementTime.compareTo(a.measurementTime));
      sortedRecords = records.copyWith(records: mutableRecords);
    }

    emit(state.copyWith(
      isLoading: false,
      records: sortedRecords ?? BloodPressureRecords(records: []),
      isHighBloodPressure: false,
    ));
  }

  Future<void> addBloodPressureRecord({
    required int systolic,
    required int diastolic,
    required DateTime measurementTime,
    required bool triggerHighBloodPressureCheck,
  }) async {
    bool isHighBloodPressure = false;
    final currentRecords = _getBloodPressureRecordsUseCase(null) ?? BloodPressureRecords(records: []);
    final newId = currentRecords.records.length + 1;
    final newRecord = BloodPressureRecord(
      id: newId,
      measurementTime: measurementTime,
      systolic: systolic,
      diastolic: diastolic,
    );
    final newRecordsList = List<BloodPressureRecord>.from(currentRecords.records)..add(newRecord);
    newRecordsList.sort((a, b) => b.measurementTime.compareTo(a.measurementTime));
    final updatedRecords = BloodPressureRecords(records: newRecordsList);
    await _saveBloodPressureRecordsUseCase(updatedRecords);

    if ((systolic > systolicThreshold || diastolic > diastolicThreshold) && triggerHighBloodPressureCheck) {
      isHighBloodPressure = true;
    }

    emit(state.copyWith(records: updatedRecords, isHighBloodPressure: isHighBloodPressure));
  }

  Future<void> deleteBloodPressureRecord(BloodPressureRecord record) async {
    await _deleteBloodPressureRecordUseCase(record);
    fetchBloodPressureRecords();
  }
}

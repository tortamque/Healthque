import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/features/health/health.dart';

part 'blood_sugar_tracking_state.dart';
part 'blood_sugar_tracking_cubit.freezed.dart';

class BloodSugarTrackingCubit extends Cubit<BloodSugarTrackingState> {
  BloodSugarTrackingCubit(
    this._getBloodSugarRecordsUseCase,
    this._saveBloodSugarRecordsUseCase,
    this._deleteBloodSugarRecordUseCase,
  ) : super(const BloodSugarTrackingState());

  final GetBloodSugarRecordsUseCase _getBloodSugarRecordsUseCase;
  final SaveBloodSugarRecordsUseCase _saveBloodSugarRecordsUseCase;
  final DeleteBloodSugarRecordUseCase _deleteBloodSugarRecordUseCase;

  void fetchBloodSugarRecords() {
    emit(state.copyWith(isLoading: true));

    final records = _getBloodSugarRecordsUseCase(null);
    BloodSugarRecords? sortedRecords;

    if (records != null) {
      final mutableRecords = List<BloodSugarRecord>.from(records.records);
      mutableRecords.sort((a, b) => b.measurementTime.compareTo(a.measurementTime));
      sortedRecords = records.copyWith(records: mutableRecords);
    }

    emit(state.copyWith(isLoading: false, records: sortedRecords));
  }

  Future<void> addBloodSugarRecord({
    required double glucose,
    required DateTime measurementTime,
  }) async {
    final currentRecords = _getBloodSugarRecordsUseCase(null) ?? BloodSugarRecords(records: []);

    final newId = currentRecords.records.length + 1;

    final newRecord = BloodSugarRecord(
      id: newId,
      measurementTime: measurementTime,
      glucose: glucose,
    );

    final newRecordsList = List<BloodSugarRecord>.from(currentRecords.records)..add(newRecord);
    newRecordsList.sort((a, b) => b.measurementTime.compareTo(a.measurementTime));

    final updatedRecords = BloodSugarRecords(records: newRecordsList);
    await _saveBloodSugarRecordsUseCase(updatedRecords);
    emit(state.copyWith(records: updatedRecords));
  }

  Future<void> deleteBloodSugarRecord(BloodSugarRecord record) async {
    await _deleteBloodSugarRecordUseCase(record);
    fetchBloodSugarRecords();
  }
}

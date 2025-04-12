import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/features/health/health.dart';

part 'stress_mood_tracking_state.dart';
part 'stress_mood_tracking_cubit.freezed.dart';

class StressMoodTrackingCubit extends Cubit<StressMoodTrackingState> {
  StressMoodTrackingCubit(
    this._getStressMoodRecordsUseCase,
    this._saveStressMoodRecordsUseCase,
    this._deleteStressMoodRecordUseCase,
  ) : super(StressMoodTrackingState());

  final GetStressMoodRecordsUseCase _getStressMoodRecordsUseCase;
  final SaveStressMoodRecordsUseCase _saveStressMoodRecordsUseCase;
  final DeleteStressMoodRecordUseCase _deleteStressMoodRecordUseCase;

  void fetchStressMoodRecords() {
    emit(state.copyWith(isLoading: true));
    final records = _getStressMoodRecordsUseCase(null);
    StressMoodRecords? sortedRecords;
    if (records != null) {
      final mutableRecords = List<StressMoodRecord>.from(records.records);
      mutableRecords.sort((a, b) => b.measurementTime.compareTo(a.measurementTime));
      sortedRecords = records.copyWith(records: mutableRecords);
    }
    emit(state.copyWith(isLoading: false, records: sortedRecords ?? StressMoodRecords(records: [])));
  }

  Future<void> addStressMoodRecord({
    required int stress,
    required int mood,
    required DateTime measurementTime,
  }) async {
    final current = _getStressMoodRecordsUseCase(null) ?? StressMoodRecords(records: []);
    final newId = current.records.isEmpty ? 1 : current.records.map((e) => e.id).reduce((a, b) => a > b ? a : b) + 1;
    final newRecord = StressMoodRecord(
      id: newId,
      measurementTime: measurementTime,
      stress: stress,
      mood: mood,
    );
    final newRecordsList = List<StressMoodRecord>.from(current.records)..add(newRecord);
    newRecordsList.sort((a, b) => b.measurementTime.compareTo(a.measurementTime));
    final updatedRecords = StressMoodRecords(records: newRecordsList);
    await _saveStressMoodRecordsUseCase(updatedRecords);
    emit(state.copyWith(records: updatedRecords));
  }

  Future<void> deleteStressMoodRecord(StressMoodRecord record) async {
    await _deleteStressMoodRecordUseCase(record);
    fetchStressMoodRecords();
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/features/health/health.dart';

part 'water_tracking_state.dart';
part 'water_tracking_cubit.freezed.dart';

class WaterTrackingCubit extends Cubit<WaterTrackingState> {
  WaterTrackingCubit(
    this._getWaterRecordsUseCase,
    this._saveWaterRecordsUseCase,
    this._deleteWaterRecordUseCase,
  ) : super(WaterTrackingState(records: WaterRecords(records: []), isLoading: false));

  final GetWaterRecordsUseCase _getWaterRecordsUseCase;
  final SaveWaterRecordsUseCase _saveWaterRecordsUseCase;
  final DeleteWaterRecordUseCase _deleteWaterRecordUseCase;

  void fetchWaterRecords() {
    final records = _getWaterRecordsUseCase.call(null) ?? WaterRecords(records: []);
    emit(WaterTrackingState(records: records, isLoading: false));
  }

  Future<void> addWaterRecord({required double amount, DateTime? datetime}) async {
    final currentRecords = _getWaterRecordsUseCase.call(null) ?? WaterRecords(records: []);
    final int newId = currentRecords.records.length + 1;
    final record = WaterRecord(
      id: newId,
      datetime: datetime ?? DateTime.now(),
      amount: amount,
    );
    final updatedRecords = currentRecords.copyWith(
      records: List.from(currentRecords.records)..add(record),
    );
    await _saveWaterRecordsUseCase.call(updatedRecords);
    emit(WaterTrackingState(records: updatedRecords, isLoading: false));
  }

  Future<void> deleteWaterRecord(WaterRecord record) async {
    await _deleteWaterRecordUseCase.call(record);
    final updatedRecords = _getWaterRecordsUseCase.call(null) ?? WaterRecords(records: []);
    emit(WaterTrackingState(records: updatedRecords, isLoading: false));
  }
}

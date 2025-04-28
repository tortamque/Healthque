import 'package:healthque/core/usecases/usecase.dart';
import 'package:healthque/features/health/health.dart';

class GetWaterRecordsUseCase implements UseCase<WaterRecords?, void> {
  final WaterTrackingRepository repository;
  GetWaterRecordsUseCase(this.repository);

  @override
  WaterRecords? call(void params) => repository.getWaterRecords();
}

class SaveWaterRecordsUseCase implements AsyncUseCase<void, WaterRecords> {
  final WaterTrackingRepository repository;
  SaveWaterRecordsUseCase(this.repository);

  @override
  Future<void> call(WaterRecords params) => repository.saveWaterRecords(params);
}

class DeleteWaterRecordUseCase implements AsyncUseCase<void, WaterRecord> {
  final WaterTrackingRepository repository;
  DeleteWaterRecordUseCase(this.repository);

  @override
  Future<void> call(WaterRecord params) => repository.deleteWaterRecord(params);
}

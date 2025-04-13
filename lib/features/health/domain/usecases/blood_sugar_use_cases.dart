import 'package:healthque/core/usecases/usecase.dart';
import 'package:healthque/features/health/health.dart';

class GetBloodSugarRecordsUseCase implements UseCase<BloodSugarRecords?, void> {
  final BloodSugarTrackingRepository repository;

  GetBloodSugarRecordsUseCase(this.repository);

  @override
  BloodSugarRecords? call(void params) => repository.getBloodSugarRecords();
}

class SaveBloodSugarRecordsUseCase implements AsyncUseCase<void, BloodSugarRecords> {
  final BloodSugarTrackingRepository repository;

  SaveBloodSugarRecordsUseCase(this.repository);

  @override
  Future<void> call(BloodSugarRecords params) => repository.saveBloodSugarRecords(params);
}

class DeleteBloodSugarRecordUseCase implements AsyncUseCase<void, BloodSugarRecord> {
  final BloodSugarTrackingRepository repository;

  DeleteBloodSugarRecordUseCase(this.repository);

  @override
  Future<void> call(BloodSugarRecord params) => repository.deleteBloodSugarRecord(params);
}

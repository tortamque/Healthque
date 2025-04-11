import 'package:healthque/core/usecases/usecase.dart';
import 'package:healthque/features/health/health.dart';

class GetBloodPressureRecordsUseCase implements UseCase<BloodPressureRecords?, void> {
  final BloodPressureTrackingRepository repository;

  GetBloodPressureRecordsUseCase(this.repository);

  @override
  BloodPressureRecords? call(void params) => repository.getBloodPressureRecords();
}

class SaveBloodPressureRecordsUseCase implements AsyncUseCase<void, BloodPressureRecords> {
  final BloodPressureTrackingRepository repository;

  SaveBloodPressureRecordsUseCase(this.repository);

  @override
  Future<void> call(BloodPressureRecords params) => repository.saveBloodPressureRecords(params);
}

class DeleteBloodPressureRecordUseCase implements AsyncUseCase<void, BloodPressureRecord> {
  final BloodPressureTrackingRepository repository;

  DeleteBloodPressureRecordUseCase(this.repository);

  @override
  Future<void> call(BloodPressureRecord params) => repository.deleteBloodPressureRecord(params);
}

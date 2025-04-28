import 'package:healthque/core/usecases/usecase.dart';
import 'package:healthque/features/health/health.dart';

class GetStressMoodRecordsUseCase implements UseCase<StressMoodRecords?, void> {
  final StressMoodTrackingRepository repository;

  GetStressMoodRecordsUseCase(this.repository);

  @override
  StressMoodRecords? call(void params) => repository.getStressMoodRecords();
}

class SaveStressMoodRecordsUseCase implements AsyncUseCase<void, StressMoodRecords> {
  final StressMoodTrackingRepository repository;

  SaveStressMoodRecordsUseCase(this.repository);

  @override
  Future<void> call(StressMoodRecords params) => repository.saveStressMoodRecords(params);
}

class DeleteStressMoodRecordUseCase implements AsyncUseCase<void, StressMoodRecord> {
  final StressMoodTrackingRepository repository;

  DeleteStressMoodRecordUseCase(this.repository);

  @override
  Future<void> call(StressMoodRecord params) => repository.deleteStressMoodRecord(params);
}

import 'package:healthque/core/usecases/usecase.dart';
import 'package:healthque/features/health/health.dart';

class GetTemperatureRecordsUseCase implements UseCase<TemperatureRecords?, void> {
  final TemperatureTrackingRepository repository;

  GetTemperatureRecordsUseCase(this.repository);

  @override
  TemperatureRecords? call(void params) => repository.getTemperatureRecords();
}

class SaveTemperatureRecordsUseCase implements AsyncUseCase<void, TemperatureRecords> {
  final TemperatureTrackingRepository repository;

  SaveTemperatureRecordsUseCase(this.repository);

  @override
  Future<void> call(TemperatureRecords params) => repository.saveTemperatureRecords(params);
}

class DeleteTemperatureRecordUseCase implements AsyncUseCase<void, TemperatureRecord> {
  final TemperatureTrackingRepository repository;

  DeleteTemperatureRecordUseCase(this.repository);

  @override
  Future<void> call(TemperatureRecord params) => repository.deleteTemperatureRecord(params);
}

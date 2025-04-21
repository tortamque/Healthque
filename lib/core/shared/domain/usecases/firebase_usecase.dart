import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/usecases/usecase.dart';

class SaveUserDataParams {
  final Map<String, dynamic> profile;
  final Map<String, dynamic> workouts;
  final Map<String, dynamic> bloodPressureRecords;
  final Map<String, dynamic> temperatureRecords;
  final Map<String, dynamic> bloodSugarRecords;
  final Map<String, dynamic> waterRecords;
  final Map<String, dynamic> stressMoodRecords;
  final Map<String, dynamic> notifications;
  final Map<String, dynamic> courseTreatments;
  final Map<String, dynamic> medications;
  final Map<String, dynamic> themePreference;
  final Map<String, dynamic> locale;

  SaveUserDataParams({
    required this.profile,
    required this.workouts,
    required this.bloodPressureRecords,
    required this.temperatureRecords,
    required this.bloodSugarRecords,
    required this.waterRecords,
    required this.stressMoodRecords,
    required this.notifications,
    required this.courseTreatments,
    required this.medications,
    required this.themePreference,
    required this.locale,
  });
}

class SaveUserDataUseCase implements AsyncUseCase<void, SaveUserDataParams> {
  final FirebaseRepository repository;

  SaveUserDataUseCase(this.repository);

  @override
  Future<void> call(SaveUserDataParams params) {
    return repository.saveUserData(
      profile: params.profile,
      workouts: params.workouts,
      temperatureRecords: params.temperatureRecords,
      bloodSugarRecords: params.bloodSugarRecords,
      waterRecords: params.waterRecords,
      stressMoodRecords: params.stressMoodRecords,
      notifications: params.notifications,
      bloodPressureRecords: params.bloodPressureRecords,
      courseTreatments: params.courseTreatments,
      medications: params.medications,
      themePreference: params.themePreference,
      locale: params.locale,
    );
  }
}

class GetUserDataUseCase implements AsyncUseCase<Map<String, dynamic>?, void> {
  final FirebaseRepository repository;

  GetUserDataUseCase(this.repository);

  @override
  Future<Map<String, dynamic>?> call(void params) {
    return repository.getUserData();
  }
}

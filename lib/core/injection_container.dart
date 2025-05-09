import 'package:get_it/get_it.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/utils/hive/hive.dart';
import 'package:healthque/core/utils/utils.dart';
import 'package:healthque/features/activity/activity.dart';
import 'package:healthque/features/health/health.dart';
import 'package:healthque/features/profile/profile.dart';

final sl = GetIt.instance;

void initializeDependencies() {
  sl
    // Other
    ..registerSingleton<UserHiveManager>(UserHiveManager())
    ..registerSingleton<WorkoutsHiveManager>(WorkoutsHiveManager())
    ..registerSingleton<NotificationsHiveManager>(NotificationsHiveManager())
    ..registerSingleton<MedicationTrackingHiveManager>(MedicationTrackingHiveManager())
    ..registerSingleton<CourseTreatmentHiveManager>(CourseTreatmentHiveManager())
    ..registerSingleton<WaterTrackingHiveManager>(WaterTrackingHiveManager())
    ..registerSingleton<TemperatureTrackingHiveManager>(TemperatureTrackingHiveManager())
    ..registerSingleton<BloodPressureTrackingHiveManager>(BloodPressureTrackingHiveManager())
    ..registerSingleton<ThemePreferenceHiveManager>(ThemePreferenceHiveManager())
    ..registerSingleton<StressMoodTrackingHiveManager>(StressMoodTrackingHiveManager())
    ..registerSingleton<BloodSugarTrackingHiveManager>(BloodSugarTrackingHiveManager())
    ..registerSingleton<LocaleHiveManager>(LocaleHiveManager())

    // Services
    ..registerSingleton<UserDbService>(UserDbServiceImpl(sl<UserHiveManager>()))
    ..registerSingleton<ActivityDbService>(ActivityDbServiceImpl(sl<WorkoutsHiveManager>()))
    ..registerSingleton<NotificationsDbService>(NotificationsDbServiceImpl(sl<NotificationsHiveManager>()))
    ..registerSingleton<MedicationTrackingDbService>(
        MedicationTrackingDbServiceImpl(sl<MedicationTrackingHiveManager>()))
    ..registerSingleton<CourseTreatmentDbService>(CourseTreatmentDbServiceImpl(sl<CourseTreatmentHiveManager>()))
    ..registerSingleton<WaterTrackingDbService>(WaterTrackingDbServiceImpl(sl<WaterTrackingHiveManager>()))
    ..registerSingleton<TemperatureTrackingDbService>(
        TemperatureTrackingDbServiceImpl(sl<TemperatureTrackingHiveManager>()))
    ..registerSingleton<BloodPressureTrackingDbService>(
        BloodPressureTrackingDbServiceImpl(sl<BloodPressureTrackingHiveManager>()))
    ..registerSingleton<ThemePreferenceDbService>(ThemePreferenceDbServiceImpl(sl<ThemePreferenceHiveManager>()))
    ..registerSingleton<StressMoodTrackingDbService>(
        StressMoodTrackingDbServiceImpl(sl<StressMoodTrackingHiveManager>()))
    ..registerSingleton<BloodSugarTrackingDbService>(
        BloodSugarTrackingDbServiceImpl(sl<BloodSugarTrackingHiveManager>()))
    ..registerSingleton<LocaleDbService>(LocaleDbServiceImpl(sl<LocaleHiveManager>()))
    ..registerSingleton<FirebaseDbService>(FirebaseDbServiceImpl())

    // Repositories
    ..registerSingleton<UserRepository>(UserRepositoryImpl(sl()))
    ..registerSingleton<ActivityRepository>(ActivityRepositoryImpl(sl()))
    ..registerSingleton<NotificationsRepository>(NotificationsRepositoryImpl(sl()))
    ..registerSingleton<MedicationTrackingRepository>(MedicationTrackingRepositoryImpl(sl()))
    ..registerSingleton<CourseTreatmentRepository>(CourseTreatmentRepositoryImpl(sl()))
    ..registerSingleton<WaterTrackingRepository>(WaterTrackingRepositoryImpl(sl()))
    ..registerSingleton<TemperatureTrackingRepository>(TemperatureTrackingRepositoryImpl(sl()))
    ..registerSingleton<BloodPressureTrackingRepository>(BloodPressureTrackingRepositoryImpl(sl()))
    ..registerSingleton<ThemePreferenceRepository>(ThemePreferenceRepositoryImpl(sl()))
    ..registerSingleton<StressMoodTrackingRepository>(StressMoodTrackingRepositoryImpl(sl()))
    ..registerSingleton<BloodSugarTrackingRepository>(BloodSugarTrackingRepositoryImpl(sl()))
    ..registerSingleton<LocaleRepository>(LocaleRepositoryImpl(sl()))
    ..registerSingleton<FirebaseRepository>(FirebaseRepositoryImpl(sl()))

    // Use cases
    ..registerSingleton<GetUserUsecase>(GetUserUsecase(sl()))
    ..registerSingleton<SaveUserUsecase>(SaveUserUsecase(sl()))
    ..registerSingleton<GetWorkoutsUseCase>(GetWorkoutsUseCase(sl()))
    ..registerSingleton<SaveWorkoutsUseCase>(SaveWorkoutsUseCase(sl()))
    ..registerSingleton<DeleteWorkoutsUseCase>(DeleteWorkoutsUseCase(sl()))
    ..registerSingleton<GetNotificationsUseCase>(GetNotificationsUseCase(sl()))
    ..registerSingleton<SaveNotificationsUseCase>(SaveNotificationsUseCase(sl()))
    ..registerSingleton<GetMedicationTrackingUseCase>(GetMedicationTrackingUseCase(sl()))
    ..registerSingleton<GetNotificationsByTypeUseCase>(GetNotificationsByTypeUseCase(sl()))
    ..registerSingleton<SaveMedicationTrackingUseCase>(SaveMedicationTrackingUseCase(sl()))
    ..registerSingleton<DeleteNotificationByIdUseCase>(DeleteNotificationByIdUseCase(sl()))
    ..registerSingleton<DeleteMedicationTrackingUseCase>(DeleteMedicationTrackingUseCase(sl()))
    ..registerSingleton<GetCourseTreatmentsUseCase>(GetCourseTreatmentsUseCase(sl()))
    ..registerSingleton<SaveCourseTreatmentsUseCase>(SaveCourseTreatmentsUseCase(sl()))
    ..registerSingleton<DeleteCourseTreatmentUseCase>(DeleteCourseTreatmentUseCase(sl()))
    ..registerSingleton<GetWaterRecordsUseCase>(GetWaterRecordsUseCase(sl()))
    ..registerSingleton<SaveWaterRecordsUseCase>(SaveWaterRecordsUseCase(sl()))
    ..registerSingleton<DeleteWaterRecordUseCase>(DeleteWaterRecordUseCase(sl()))
    ..registerSingleton<GetTemperatureRecordsUseCase>(GetTemperatureRecordsUseCase(sl()))
    ..registerSingleton<SaveTemperatureRecordsUseCase>(SaveTemperatureRecordsUseCase(sl()))
    ..registerSingleton<DeleteTemperatureRecordUseCase>(DeleteTemperatureRecordUseCase(sl()))
    ..registerSingleton<GetBloodPressureRecordsUseCase>(GetBloodPressureRecordsUseCase(sl()))
    ..registerSingleton<SaveBloodPressureRecordsUseCase>(SaveBloodPressureRecordsUseCase(sl()))
    ..registerSingleton<DeleteBloodPressureRecordUseCase>(DeleteBloodPressureRecordUseCase(sl()))
    ..registerSingleton<GetThemePreferenceUseCase>(GetThemePreferenceUseCase(sl()))
    ..registerSingleton<SaveThemePreferenceUseCase>(SaveThemePreferenceUseCase(sl()))
    ..registerSingleton<GetStressMoodRecordsUseCase>(GetStressMoodRecordsUseCase(sl()))
    ..registerSingleton<SaveStressMoodRecordsUseCase>(SaveStressMoodRecordsUseCase(sl()))
    ..registerSingleton<DeleteStressMoodRecordUseCase>(DeleteStressMoodRecordUseCase(sl()))
    ..registerSingleton<GetBloodSugarRecordsUseCase>(GetBloodSugarRecordsUseCase(sl()))
    ..registerSingleton<SaveBloodSugarRecordsUseCase>(SaveBloodSugarRecordsUseCase(sl()))
    ..registerSingleton<DeleteBloodSugarRecordUseCase>(DeleteBloodSugarRecordUseCase(sl()))
    ..registerSingleton<SaveLocaleUseCase>(SaveLocaleUseCase(sl()))
    ..registerSingleton<GetLocaleUseCase>(GetLocaleUseCase(sl()))
    ..registerSingleton<GetUserDataUseCase>(GetUserDataUseCase(sl()))
    ..registerSingleton<SaveUserDataUseCase>(SaveUserDataUseCase(sl()));

  // Blocs
}

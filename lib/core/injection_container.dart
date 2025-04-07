import 'package:get_it/get_it.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/utils/hive/hive.dart';
import 'package:healthque/core/utils/utils.dart';
import 'package:healthque/features/activity/activity.dart';
import 'package:healthque/features/health/health.dart';

final sl = GetIt.instance;

void initializeDependencies() {
  sl
    // Other
    ..registerSingleton<UserHiveManager>(UserHiveManager())
    ..registerSingleton<WorkoutsHiveManager>(WorkoutsHiveManager())
    ..registerSingleton<NotificationsHiveManager>(NotificationsHiveManager())
    ..registerSingleton<MedicationTrackingHiveManager>(MedicationTrackingHiveManager())
    ..registerSingleton<CourseTreatmentHiveManager>(CourseTreatmentHiveManager())

    // Services
    ..registerSingleton<UserDbService>(UserDbServiceImpl(sl()))
    ..registerSingleton<ActivityDbService>(ActivityDbServiceImpl(sl()))
    ..registerSingleton<NotificationsDbService>(NotificationsDbServiceImpl(sl()))
    ..registerSingleton<MedicationTrackingDbService>(MedicationTrackingDbServiceImpl(sl()))
    ..registerSingleton<CourseTreatmentDbService>(CourseTreatmentDbServiceImpl(sl()))

    // Repositories
    ..registerSingleton<UserRepository>(UserRepositoryImpl(sl()))
    ..registerSingleton<ActivityRepository>(ActivityRepositoryImpl(sl()))
    ..registerSingleton<NotificationsRepository>(NotificationsRepositoryImpl(sl()))
    ..registerSingleton<MedicationTrackingRepository>(MedicationTrackingRepositoryImpl(sl()))
    ..registerSingleton<CourseTreatmentRepository>(CourseTreatmentRepositoryImpl(sl()))

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
    ..registerSingleton<DeleteCourseTreatmentUseCase>(DeleteCourseTreatmentUseCase(sl()));

  // Blocs
}

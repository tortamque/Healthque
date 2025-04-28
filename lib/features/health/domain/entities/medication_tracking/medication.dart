import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/features/health/health.dart';
import 'package:hive/hive.dart';

part 'medication.freezed.dart';
part 'medication.g.dart';

@freezed
@HiveType(typeId: 9, adapterName: 'MedicationAdapter')
abstract class Medication with _$Medication {
  const factory Medication({
    @HiveField(0) required int id,
    @HiveField(1) required MedicationType type,
    @HiveField(2) required String dosage,
    @HiveField(3) required String course,
    @HiveField(4) required DateTime createdAt,
    @HiveField(5) String? notes,
  }) = _Medication;

  factory Medication.fromJson(Map<String, dynamic> json) => _$MedicationFromJson(json);
}

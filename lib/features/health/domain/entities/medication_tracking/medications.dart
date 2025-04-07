import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'medication.dart';

part 'medications.freezed.dart';
part 'medications.g.dart';

@freezed
@HiveType(typeId: 10, adapterName: 'MedicationsAdapter')
abstract class Medications with _$Medications {
  const factory Medications({
    @HiveField(0) required List<Medication> medications,
  }) = _Medications;

  factory Medications.fromJson(Map<String, dynamic> json) => _$MedicationsFromJson(json);
}

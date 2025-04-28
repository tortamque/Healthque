import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:hive/hive.dart';

part 'workout.freezed.dart';
part 'workout.g.dart';

@freezed
abstract class Workout with _$Workout {
  @HiveType(typeId: 2, adapterName: 'WorkoutAdapter')
  const factory Workout({
    @HiveField(0) required WorkoutType workoutType,
    @HiveField(1) required int durationMinutes,
    @HiveField(2) required int intensity,
    @HiveField(3) double? distance,
    @HiveField(4) List<String>? tags,
    @HiveField(5) required bool isFavorite,
    @HiveField(6) required int moodRating,
    @HiveField(7) required String notes,
    @HiveField(8) required DateTime createdAt,
  }) = _Workout;

  factory Workout.fromJson(Map<String, dynamic> json) => _$WorkoutFromJson(json);
}

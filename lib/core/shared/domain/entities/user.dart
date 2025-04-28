import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:hive/hive.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  @HiveType(typeId: 0, adapterName: 'UserAdapter')
  const factory User({
    @HiveField(1) String? avatarUrl,
    @HiveField(4) int? age,
    @HiveField(5) Gender? gender,
    @HiveField(6) double? height,
    @HiveField(7) double? weight,
    @HiveField(8) int? waterConsumption,
    @HiveField(9) int? caloriesBurnInOneDay,
    @HiveField(10) int? desiredSteps,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

extension UserExtension on User {
  int get safeDesiredSteps => desiredSteps ?? 0;
}

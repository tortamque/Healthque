import 'package:freezed_annotation/freezed_annotation.dart';
import 'entities.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
@JsonSerializable()
class User with _$User {
  @override
  final String? email;
  @override
  final String? avatarUrl;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final int? age;
  @override
  final Gender? gender;
  @override
  final double? height;
  @override
  final double? weight;
  @override
  final int? waterConsumption;
  @override
  final int? caloriesBurnInOneDay;
  @override
  final int? desiredSteps;

  const User({
    this.email,
    this.avatarUrl,
    this.name,
    this.surname,
    this.age,
    this.gender,
    this.height,
    this.weight,
    this.waterConsumption,
    this.caloriesBurnInOneDay,
    this.desiredSteps,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  String get formattedName => surname == null ? name! : '$name $surname';
}

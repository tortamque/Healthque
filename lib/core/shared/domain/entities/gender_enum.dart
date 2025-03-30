import 'package:hive_flutter/hive_flutter.dart';

part 'gender_enum.g.dart';

@HiveType(typeId: 1, adapterName: 'GenderAdapter')
enum Gender {
  @HiveField(0)
  male,
  @HiveField(1)
  female,
}

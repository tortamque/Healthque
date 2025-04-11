import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<Color> {
  ThemeCubit() : super(Colors.greenAccent);

  void updateTheme(Color newSeedColor) => emit(newSeedColor);
}

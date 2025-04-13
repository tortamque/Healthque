import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/core/shared/shared.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit(
    this.getLocaleUseCase,
    this.saveLocaleUseCase,
  ) : super(const Locale('en')) {
    _initLocale();
  }

  final GetLocaleUseCase getLocaleUseCase;
  final SaveLocaleUseCase saveLocaleUseCase;

  void _initLocale() {
    final storedLocale = getLocaleUseCase(null);
    if (storedLocale != null) {
      emit(storedLocale);
    }
  }

  Future<void> changeLocale(Locale newLocale) async {
    emit(newLocale);
    await saveLocaleUseCase(newLocale);
  }
}

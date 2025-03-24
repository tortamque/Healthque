// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Strings {
  Strings();

  static Strings? _current;

  static Strings get current {
    assert(
      _current != null,
      'No instance of Strings was loaded. Try to initialize the Strings delegate before accessing Strings.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Strings> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Strings();
      Strings._current = instance;

      return instance;
    });
  }

  static Strings of(BuildContext context) {
    final instance = Strings.maybeOf(context);
    assert(
      instance != null,
      'No instance of Strings present in the widget tree. Did you add Strings.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static Strings? maybeOf(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  /// `First things first!`
  String get firstThingsFirst {
    return Intl.message(
      'First things first!',
      name: 'firstThingsFirst',
      desc: '',
      args: [],
    );
  }

  /// `Let's create account together!`
  String get letsCreateAccount {
    return Intl.message(
      'Let\'s create account together!',
      name: 'letsCreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Log in with Google`
  String get logInWithGoogle {
    return Intl.message(
      'Log in with Google',
      name: 'logInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Let's get to know each other`
  String get letsGetToKnowEachOther {
    return Intl.message(
      'Let\'s get to know each other',
      name: 'letsGetToKnowEachOther',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get enterYourName {
    return Intl.message(
      'Enter your name',
      name: 'enterYourName',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `Name can't be empty`
  String get nameCantBeEmpty {
    return Intl.message(
      'Name can\'t be empty',
      name: 'nameCantBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Enter your surname`
  String get enterYourSurname {
    return Intl.message(
      'Enter your surname',
      name: 'enterYourSurname',
      desc: '',
      args: [],
    );
  }

  /// `Enter your surname (Optional)`
  String get enterYourSurnameOptional {
    return Intl.message(
      'Enter your surname (Optional)',
      name: 'enterYourSurnameOptional',
      desc: '',
      args: [],
    );
  }

  /// `Surname`
  String get surname {
    return Intl.message('Surname', name: 'surname', desc: '', args: []);
  }

  /// `Next Step`
  String get nextStep {
    return Intl.message('Next Step', name: 'nextStep', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Strings> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Strings> load(Locale locale) => Strings.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

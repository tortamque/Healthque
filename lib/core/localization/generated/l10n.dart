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

  /// `Let's get to know you better`
  String get letsGetToKnowYouBetter {
    return Intl.message(
      'Let\'s get to know you better',
      name: 'letsGetToKnowYouBetter',
      desc: '',
      args: [],
    );
  }

  /// `Note: Height in cm and Weight in kg`
  String get noteHeightInCmAndWeightInKg {
    return Intl.message(
      'Note: Height in cm and Weight in kg',
      name: 'noteHeightInCmAndWeightInKg',
      desc: '',
      args: [],
    );
  }

  /// `Enter your age`
  String get enterYourAge {
    return Intl.message(
      'Enter your age',
      name: 'enterYourAge',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message('Age', name: 'age', desc: '', args: []);
  }

  /// `Enter your height`
  String get enterYourHeight {
    return Intl.message(
      'Enter your height',
      name: 'enterYourHeight',
      desc: '',
      args: [],
    );
  }

  /// `Height (cm)`
  String get heightInCm {
    return Intl.message('Height (cm)', name: 'heightInCm', desc: '', args: []);
  }

  /// `Enter your weight`
  String get enterYourWeight {
    return Intl.message(
      'Enter your weight',
      name: 'enterYourWeight',
      desc: '',
      args: [],
    );
  }

  /// `Weight (kg)`
  String get weightInKg {
    return Intl.message('Weight (kg)', name: 'weightInKg', desc: '', args: []);
  }

  /// `Select Gender`
  String get selectGender {
    return Intl.message(
      'Select Gender',
      name: 'selectGender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message('Male', name: 'male', desc: '', args: []);
  }

  /// `Female`
  String get female {
    return Intl.message('Female', name: 'female', desc: '', args: []);
  }

  /// `Enter a valid number`
  String get enterValidNumber {
    return Intl.message(
      'Enter a valid number',
      name: 'enterValidNumber',
      desc: '',
      args: [],
    );
  }

  /// `Age must be valid and less than 120`
  String get ageMustBeLessThan120 {
    return Intl.message(
      'Age must be valid and less than 120',
      name: 'ageMustBeLessThan120',
      desc: '',
      args: [],
    );
  }

  /// `Height must be valid and less than 300 cm`
  String get heightMustBeLessThan300 {
    return Intl.message(
      'Height must be valid and less than 300 cm',
      name: 'heightMustBeLessThan300',
      desc: '',
      args: [],
    );
  }

  /// `Weight must be valid and less than 500 kg`
  String get weightMustBeLessThan500 {
    return Intl.message(
      'Weight must be valid and less than 500 kg',
      name: 'weightMustBeLessThan500',
      desc: '',
      args: [],
    );
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

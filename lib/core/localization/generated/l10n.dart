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

  /// `How much water you can drink in one day?`
  String get howMuchWaterYouCanDrink {
    return Intl.message(
      'How much water you can drink in one day?',
      name: 'howMuchWaterYouCanDrink',
      desc: '',
      args: [],
    );
  }

  /// `Tip: Drinking water is important for your health. It helps you to stay hydrated and maintain your body temperature`
  String get waterTip {
    return Intl.message(
      'Tip: Drinking water is important for your health. It helps you to stay hydrated and maintain your body temperature',
      name: 'waterTip',
      desc: '',
      args: [],
    );
  }

  /// `How much kcal you can burn in one day during idle time (so-called basal metabolic rate)?`
  String get howMuchKcalYouCanBurn {
    return Intl.message(
      'How much kcal you can burn in one day during idle time (so-called basal metabolic rate)?',
      name: 'howMuchKcalYouCanBurn',
      desc: '',
      args: [],
    );
  }

  /// `Tip: We calculated it for you ({bmr} calories/day). You can change it if you know your body better.`
  String bmrTip(Object bmr) {
    return Intl.message(
      'Tip: We calculated it for you ($bmr calories/day). You can change it if you know your body better.',
      name: 'bmrTip',
      desc: '',
      args: [bmr],
    );
  }

  /// `Calculate BMR using formula`
  String get calculateBmrUsingFormula {
    return Intl.message(
      'Calculate BMR using formula',
      name: 'calculateBmrUsingFormula',
      desc: '',
      args: [],
    );
  }

  /// `How many steps you can walk in one day?`
  String get howManyStepsYouCanWalk {
    return Intl.message(
      'How many steps you can walk in one day?',
      name: 'howManyStepsYouCanWalk',
      desc: '',
      args: [],
    );
  }

  /// `Tip: Regular walking can boost your cardiovascular health, clear your mind, and increase your overall energy-small steps can make a big difference!`
  String get stepsTip {
    return Intl.message(
      'Tip: Regular walking can boost your cardiovascular health, clear your mind, and increase your overall energy-small steps can make a big difference!',
      name: 'stepsTip',
      desc: '',
      args: [],
    );
  }

  /// `Connecting to your wearable device. Please wait...`
  String get connectingToYourDevice {
    return Intl.message(
      'Connecting to your wearable device. Please wait...',
      name: 'connectingToYourDevice',
      desc: '',
      args: [],
    );
  }

  /// `This process may take a few seconds.`
  String get thisProcessMayTakeAFewSeconds {
    return Intl.message(
      'This process may take a few seconds.',
      name: 'thisProcessMayTakeAFewSeconds',
      desc: '',
      args: [],
    );
  }

  /// `Your wearable device is connected.`
  String get yourWearableDeviceIsConnected {
    return Intl.message(
      'Your wearable device is connected.',
      name: 'yourWearableDeviceIsConnected',
      desc: '',
      args: [],
    );
  }

  /// `You can now proceed to the next step.`
  String get youCanNowProceedToTheNextStep {
    return Intl.message(
      'You can now proceed to the next step.',
      name: 'youCanNowProceedToTheNextStep',
      desc: '',
      args: [],
    );
  }

  /// `Finish onboarding`
  String get finishOnboarding {
    return Intl.message(
      'Finish onboarding',
      name: 'finishOnboarding',
      desc: '',
      args: [],
    );
  }

  /// `Oops! Something went wrong.`
  String get oopsSomethingWentWrong {
    return Intl.message(
      'Oops! Something went wrong.',
      name: 'oopsSomethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Successfully logged in as {user}`
  String loggedInAs(Object user) {
    return Intl.message(
      'Successfully logged in as $user',
      name: 'loggedInAs',
      desc: '',
      args: [user],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message('Dashboard', name: 'dashboard', desc: '', args: []);
  }

  /// `Activity`
  String get activity {
    return Intl.message('Activity', name: 'activity', desc: '', args: []);
  }

  /// `Health`
  String get health {
    return Intl.message('Health', name: 'health', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Your activities`
  String get yourActivities {
    return Intl.message(
      'Your activities',
      name: 'yourActivities',
      desc: '',
      args: [],
    );
  }

  /// `Steps`
  String get steps {
    return Intl.message('Steps', name: 'steps', desc: '', args: []);
  }

  /// `Sleep`
  String get sleep {
    return Intl.message('Sleep', name: 'sleep', desc: '', args: []);
  }

  /// `{hours}h {minutes}m`
  String sleepDuration(Object hours, Object minutes) {
    return Intl.message(
      '${hours}h ${minutes}m',
      name: 'sleepDuration',
      desc: '',
      args: [hours, minutes],
    );
  }

  /// `{amount} steps`
  String amountSteps(Object amount) {
    return Intl.message(
      '$amount steps',
      name: 'amountSteps',
      desc: '',
      args: [amount],
    );
  }

  /// `{amount}km`
  String amountKm(Object amount) {
    return Intl.message(
      '${amount}km',
      name: 'amountKm',
      desc: '',
      args: [amount],
    );
  }

  /// `{amount}m`
  String amountM(Object amount) {
    return Intl.message(
      '${amount}m',
      name: 'amountM',
      desc: '',
      args: [amount],
    );
  }

  /// `Distance`
  String get distance {
    return Intl.message('Distance', name: 'distance', desc: '', args: []);
  }

  /// `Calories burned during workouts`
  String get caloriesBurnedDuringWorkouts {
    return Intl.message(
      'Calories burned during workouts',
      name: 'caloriesBurnedDuringWorkouts',
      desc: '',
      args: [],
    );
  }

  /// `{amount} kcal`
  String amoutKcal(Object amount) {
    return Intl.message(
      '$amount kcal',
      name: 'amoutKcal',
      desc: '',
      args: [amount],
    );
  }

  /// `Blood oxygen saturation`
  String get bloodOxygenSaturation {
    return Intl.message(
      'Blood oxygen saturation',
      name: 'bloodOxygenSaturation',
      desc: '',
      args: [],
    );
  }

  /// `{ammount}%`
  String amountPercentage(Object ammount) {
    return Intl.message(
      '$ammount%',
      name: 'amountPercentage',
      desc: '',
      args: [ammount],
    );
  }

  /// `Workouts amount`
  String get workoutsAmount {
    return Intl.message(
      'Workouts amount',
      name: 'workoutsAmount',
      desc: '',
      args: [],
    );
  }

  /// `{amount} workouts`
  String amountWorkouts(Object amount) {
    return Intl.message(
      '$amount workouts',
      name: 'amountWorkouts',
      desc: '',
      args: [amount],
    );
  }

  /// `There's not enough data to build the chart`
  String get theresNotEnoughDataToBuildTheChart {
    return Intl.message(
      'There\'s not enough data to build the chart',
      name: 'theresNotEnoughDataToBuildTheChart',
      desc: '',
      args: [],
    );
  }

  /// `Amount of each workout type`
  String get amountOfEachWorkoutType {
    return Intl.message(
      'Amount of each workout type',
      name: 'amountOfEachWorkoutType',
      desc: '',
      args: [],
    );
  }

  /// `Energy Burned`
  String get energyBurned {
    return Intl.message(
      'Energy Burned',
      name: 'energyBurned',
      desc: '',
      args: [],
    );
  }

  /// `m`
  String get metersShort {
    return Intl.message('m', name: 'metersShort', desc: '', args: []);
  }

  /// `mi`
  String get milesShort {
    return Intl.message('mi', name: 'milesShort', desc: '', args: []);
  }

  /// `All your activities`
  String get allYourActivitiesText {
    return Intl.message(
      'All your activities',
      name: 'allYourActivitiesText',
      desc: '',
      args: [],
    );
  }

  /// `Activity analysis`
  String get activityAnalysisText {
    return Intl.message(
      'Activity analysis',
      name: 'activityAnalysisText',
      desc: '',
      args: [],
    );
  }

  /// `Add a new workout`
  String get addANewWorkout {
    return Intl.message(
      'Add a new workout',
      name: 'addANewWorkout',
      desc: '',
      args: [],
    );
  }

  /// `Add Workout`
  String get addWorkout {
    return Intl.message('Add Workout', name: 'addWorkout', desc: '', args: []);
  }

  /// `Save workout`
  String get saveWorkout {
    return Intl.message(
      'Save workout',
      name: 'saveWorkout',
      desc: '',
      args: [],
    );
  }

  /// `Workout saved`
  String get workoutSaved {
    return Intl.message(
      'Workout saved',
      name: 'workoutSaved',
      desc: '',
      args: [],
    );
  }

  /// `Distance (km)`
  String get distanceKm {
    return Intl.message(
      'Distance (km)',
      name: 'distanceKm',
      desc: '',
      args: [],
    );
  }

  /// `Enter distance in km`
  String get enterDistanceInKm {
    return Intl.message(
      'Enter distance in km',
      name: 'enterDistanceInKm',
      desc: '',
      args: [],
    );
  }

  /// `Please enter distance`
  String get pleaseEnterDistance {
    return Intl.message(
      'Please enter distance',
      name: 'pleaseEnterDistance',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid distance`
  String get enterAValidDistance {
    return Intl.message(
      'Enter a valid distance',
      name: 'enterAValidDistance',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get duration {
    return Intl.message('Duration', name: 'duration', desc: '', args: []);
  }

  /// `{hours} h {minutes} m`
  String hoursAndMinutesAmount(Object hours, Object minutes) {
    return Intl.message(
      '$hours h $minutes m',
      name: 'hoursAndMinutesAmount',
      desc: '',
      args: [hours, minutes],
    );
  }

  /// `{minutes} m`
  String minutesAmount(Object minutes) {
    return Intl.message(
      '$minutes m',
      name: 'minutesAmount',
      desc: '',
      args: [minutes],
    );
  }

  /// `Pick Duration`
  String get pickDuration {
    return Intl.message(
      'Pick Duration',
      name: 'pickDuration',
      desc: '',
      args: [],
    );
  }

  /// `Mark as Favorite`
  String get markAsFavorite {
    return Intl.message(
      'Mark as Favorite',
      name: 'markAsFavorite',
      desc: '',
      args: [],
    );
  }

  /// `Intensity`
  String get intensity {
    return Intl.message('Intensity', name: 'intensity', desc: '', args: []);
  }

  /// `How did you feel?`
  String get howDidYouFeel {
    return Intl.message(
      'How did you feel?',
      name: 'howDidYouFeel',
      desc: '',
      args: [],
    );
  }

  /// `Additional Notes`
  String get additionalNotes {
    return Intl.message(
      'Additional Notes',
      name: 'additionalNotes',
      desc: '',
      args: [],
    );
  }

  /// `Enter any extra details...`
  String get enterAnyExtraDetails {
    return Intl.message(
      'Enter any extra details...',
      name: 'enterAnyExtraDetails',
      desc: '',
      args: [],
    );
  }

  /// `Tags (comma separated)`
  String get tagsCommaSeparated {
    return Intl.message(
      'Tags (comma separated)',
      name: 'tagsCommaSeparated',
      desc: '',
      args: [],
    );
  }

  /// `.g., morning, HIIT, recovery`
  String get egMorningHIIT {
    return Intl.message(
      '.g., morning, HIIT, recovery',
      name: 'egMorningHIIT',
      desc: '',
      args: [],
    );
  }

  /// `Workout Type`
  String get workoutType {
    return Intl.message(
      'Workout Type',
      name: 'workoutType',
      desc: '',
      args: [],
    );
  }

  /// `Select Workout Type`
  String get selectWorkoutType {
    return Intl.message(
      'Select Workout Type',
      name: 'selectWorkoutType',
      desc: '',
      args: [],
    );
  }

  /// `Please select a workout type`
  String get pleaseSelectAWorkoutType {
    return Intl.message(
      'Please select a workout type',
      name: 'pleaseSelectAWorkoutType',
      desc: '',
      args: [],
    );
  }

  /// `Running`
  String get running {
    return Intl.message('Running', name: 'running', desc: '', args: []);
  }

  /// `Swimming`
  String get swimming {
    return Intl.message('Swimming', name: 'swimming', desc: '', args: []);
  }

  /// `Cycling`
  String get cycling {
    return Intl.message('Cycling', name: 'cycling', desc: '', args: []);
  }

  /// `Weight Training`
  String get weightTraining {
    return Intl.message(
      'Weight Training',
      name: 'weightTraining',
      desc: '',
      args: [],
    );
  }

  /// `Walking`
  String get walking {
    return Intl.message('Walking', name: 'walking', desc: '', args: []);
  }

  /// `Tennis`
  String get tennis {
    return Intl.message('Tennis', name: 'tennis', desc: '', args: []);
  }

  /// `Gymnastics`
  String get gymnastics {
    return Intl.message('Gymnastics', name: 'gymnastics', desc: '', args: []);
  }

  /// `Bouldering`
  String get bouldering {
    return Intl.message('Bouldering', name: 'bouldering', desc: '', args: []);
  }

  /// `No saved workouts yet.`
  String get noSavedWorkoutsYet {
    return Intl.message(
      'No saved workouts yet.',
      name: 'noSavedWorkoutsYet',
      desc: '',
      args: [],
    );
  }

  /// `Saved Workouts`
  String get savedWorkouts {
    return Intl.message(
      'Saved Workouts',
      name: 'savedWorkouts',
      desc: '',
      args: [],
    );
  }

  /// `{minutes} minutes`
  String minutesAmountLong(Object minutes) {
    return Intl.message(
      '$minutes minutes',
      name: 'minutesAmountLong',
      desc: '',
      args: [minutes],
    );
  }

  /// `Training evaluation`
  String get trainingEvaluation {
    return Intl.message(
      'Training evaluation',
      name: 'trainingEvaluation',
      desc: '',
      args: [],
    );
  }

  /// `Workout Details`
  String get workoutDetails {
    return Intl.message(
      'Workout Details',
      name: 'workoutDetails',
      desc: '',
      args: [],
    );
  }

  /// `Tags`
  String get tags {
    return Intl.message('Tags', name: 'tags', desc: '', args: []);
  }

  /// `Favorite`
  String get favorite {
    return Intl.message('Favorite', name: 'favorite', desc: '', args: []);
  }

  /// `Yes`
  String get yes {
    return Intl.message('Yes', name: 'yes', desc: '', args: []);
  }

  /// `No`
  String get no {
    return Intl.message('No', name: 'no', desc: '', args: []);
  }

  /// `Notes`
  String get notes {
    return Intl.message('Notes', name: 'notes', desc: '', args: []);
  }

  /// `Created At`
  String get createdAt {
    return Intl.message('Created At', name: 'createdAt', desc: '', args: []);
  }

  /// `Are you sure you want to delete this workout?`
  String get deleteConfirmation {
    return Intl.message(
      'Are you sure you want to delete this workout?',
      name: 'deleteConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Filter by Type`
  String get filterByType {
    return Intl.message(
      'Filter by Type',
      name: 'filterByType',
      desc: '',
      args: [],
    );
  }

  /// `Filter by Date`
  String get filterByDate {
    return Intl.message(
      'Filter by Date',
      name: 'filterByDate',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message('All', name: 'all', desc: '', args: []);
  }

  /// `Apply Filter`
  String get applyFilter {
    return Intl.message(
      'Apply Filter',
      name: 'applyFilter',
      desc: '',
      args: [],
    );
  }

  /// `Clear filter`
  String get clearFilter {
    return Intl.message(
      'Clear filter',
      name: 'clearFilter',
      desc: '',
      args: [],
    );
  }

  /// `Select Date`
  String get selectDate {
    return Intl.message('Select Date', name: 'selectDate', desc: '', args: []);
  }

  /// `Configure Workout Reminder`
  String get configureWorkoutReminder {
    return Intl.message(
      'Configure Workout Reminder',
      name: 'configureWorkoutReminder',
      desc: '',
      args: [],
    );
  }

  /// `Please select a workout type.`
  String get workoutTypeValidationMessage {
    return Intl.message(
      'Please select a workout type.',
      name: 'workoutTypeValidationMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please select a date.`
  String get dateValidationMessage {
    return Intl.message(
      'Please select a date.',
      name: 'dateValidationMessage',
      desc: '',
      args: [],
    );
  }

  /// `Select Time`
  String get selectTime {
    return Intl.message('Select Time', name: 'selectTime', desc: '', args: []);
  }

  /// `Please select a time.`
  String get timeValidationMessage {
    return Intl.message(
      'Please select a time.',
      name: 'timeValidationMessage',
      desc: '',
      args: [],
    );
  }

  /// `Reminder Title (Optional)`
  String get reminderTitleOptional {
    return Intl.message(
      'Reminder Title (Optional)',
      name: 'reminderTitleOptional',
      desc: '',
      args: [],
    );
  }

  /// `Reminder Body (Optional)`
  String get reminderBodyOptional {
    return Intl.message(
      'Reminder Body (Optional)',
      name: 'reminderBodyOptional',
      desc: '',
      args: [],
    );
  }

  /// `Save Reminder`
  String get saveReminder {
    return Intl.message(
      'Save Reminder',
      name: 'saveReminder',
      desc: '',
      args: [],
    );
  }

  /// `Workout Reminder`
  String get defaultWorkoutReminderTitle {
    return Intl.message(
      'Workout Reminder',
      name: 'defaultWorkoutReminderTitle',
      desc: '',
      args: [],
    );
  }

  /// `Don't forget your {type} workout today!`
  String defaultWorkoutReminderBody(Object type) {
    return Intl.message(
      'Don\'t forget your $type workout today!',
      name: 'defaultWorkoutReminderBody',
      desc: '',
      args: [type],
    );
  }

  /// `Workout reminder scheduled successfully!`
  String get workoutReminderScheduled {
    return Intl.message(
      'Workout reminder scheduled successfully!',
      name: 'workoutReminderScheduled',
      desc: '',
      args: [],
    );
  }

  /// `Your Reminders`
  String get yourReminders {
    return Intl.message(
      'Your Reminders',
      name: 'yourReminders',
      desc: '',
      args: [],
    );
  }

  /// `No workout reminders available.`
  String get noReminders {
    return Intl.message(
      'No workout reminders available.',
      name: 'noReminders',
      desc: '',
      args: [],
    );
  }

  /// `Scheduled at`
  String get scheduledAt {
    return Intl.message(
      'Scheduled at',
      name: 'scheduledAt',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get reminderType {
    return Intl.message('Type', name: 'reminderType', desc: '', args: []);
  }

  /// `Reminder deleted successfully`
  String get reminderDeleted {
    return Intl.message(
      'Reminder deleted successfully',
      name: 'reminderDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Medication tracking`
  String get medicationTracking {
    return Intl.message(
      'Medication tracking',
      name: 'medicationTracking',
      desc: '',
      args: [],
    );
  }

  /// `Keep track of your medications, dosages, and schedules.`
  String get medicationTrackingDescription {
    return Intl.message(
      'Keep track of your medications, dosages, and schedules.',
      name: 'medicationTrackingDescription',
      desc: '',
      args: [],
    );
  }

  /// `Add Medication`
  String get addMedication {
    return Intl.message(
      'Add Medication',
      name: 'addMedication',
      desc: '',
      args: [],
    );
  }

  /// `Medication Type`
  String get medicationType {
    return Intl.message(
      'Medication Type',
      name: 'medicationType',
      desc: '',
      args: [],
    );
  }

  /// `Please select a medication type`
  String get medicationTypeValidation {
    return Intl.message(
      'Please select a medication type',
      name: 'medicationTypeValidation',
      desc: '',
      args: [],
    );
  }

  /// `Dosage`
  String get dosage {
    return Intl.message('Dosage', name: 'dosage', desc: '', args: []);
  }

  /// `Please enter the dosage`
  String get dosageValidation {
    return Intl.message(
      'Please enter the dosage',
      name: 'dosageValidation',
      desc: '',
      args: [],
    );
  }

  /// `Course of Treatment`
  String get courseOfTreatment {
    return Intl.message(
      'Course of Treatment',
      name: 'courseOfTreatment',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the course of treatment`
  String get courseValidation {
    return Intl.message(
      'Please enter the course of treatment',
      name: 'courseValidation',
      desc: '',
      args: [],
    );
  }

  /// `Add Medication`
  String get addMedicationButton {
    return Intl.message(
      'Add Medication',
      name: 'addMedicationButton',
      desc: '',
      args: [],
    );
  }

  /// `Medication History`
  String get medicationHistory {
    return Intl.message(
      'Medication History',
      name: 'medicationHistory',
      desc: '',
      args: [],
    );
  }

  /// `No medications found.`
  String get noMedications {
    return Intl.message(
      'No medications found.',
      name: 'noMedications',
      desc: '',
      args: [],
    );
  }

  /// `Medication added successfully`
  String get medicationAdded {
    return Intl.message(
      'Medication added successfully',
      name: 'medicationAdded',
      desc: '',
      args: [],
    );
  }

  /// `Added on`
  String get addedOn {
    return Intl.message('Added on', name: 'addedOn', desc: '', args: []);
  }

  /// `pieces`
  String get pieces {
    return Intl.message('pieces', name: 'pieces', desc: '', args: []);
  }

  /// `ml`
  String get ml {
    return Intl.message('ml', name: 'ml', desc: '', args: []);
  }

  /// `units`
  String get units {
    return Intl.message('units', name: 'units', desc: '', args: []);
  }

  /// `Tablet`
  String get tablet {
    return Intl.message('Tablet', name: 'tablet', desc: '', args: []);
  }

  /// `Capsule`
  String get capsule {
    return Intl.message('Capsule', name: 'capsule', desc: '', args: []);
  }

  /// `Injection`
  String get injection {
    return Intl.message('Injection', name: 'injection', desc: '', args: []);
  }

  /// `Syrup`
  String get syrup {
    return Intl.message('Syrup', name: 'syrup', desc: '', args: []);
  }

  /// `Other`
  String get other {
    return Intl.message('Other', name: 'other', desc: '', args: []);
  }

  /// `Medication deleted successfully`
  String get medicationDeleted {
    return Intl.message(
      'Medication deleted successfully',
      name: 'medicationDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Course Treatment`
  String get courseTreatment {
    return Intl.message(
      'Course Treatment',
      name: 'courseTreatment',
      desc: '',
      args: [],
    );
  }

  /// `Add Course`
  String get addCourse {
    return Intl.message('Add Course', name: 'addCourse', desc: '', args: []);
  }

  /// `Select Course Start Date`
  String get selectCourseStart {
    return Intl.message(
      'Select Course Start Date',
      name: 'selectCourseStart',
      desc: '',
      args: [],
    );
  }

  /// `Select Course End Date`
  String get selectCourseEnd {
    return Intl.message(
      'Select Course End Date',
      name: 'selectCourseEnd',
      desc: '',
      args: [],
    );
  }

  /// `Select Medication Time`
  String get selectMedicationTime {
    return Intl.message(
      'Select Medication Time',
      name: 'selectMedicationTime',
      desc: '',
      args: [],
    );
  }

  /// `Repeat Interval`
  String get repeatInterval {
    return Intl.message(
      'Repeat Interval',
      name: 'repeatInterval',
      desc: '',
      args: [],
    );
  }

  /// `Please select a repeat interval`
  String get repeatIntervalValidation {
    return Intl.message(
      'Please select a repeat interval',
      name: 'repeatIntervalValidation',
      desc: '',
      args: [],
    );
  }

  /// `Add Drugs`
  String get addDrugs {
    return Intl.message('Add Drugs', name: 'addDrugs', desc: '', args: []);
  }

  /// `Add Drug`
  String get addDrug {
    return Intl.message('Add Drug', name: 'addDrug', desc: '', args: []);
  }

  /// `Course Duration`
  String get courseDuration {
    return Intl.message(
      'Course Duration',
      name: 'courseDuration',
      desc: '',
      args: [],
    );
  }

  /// `Medication Time`
  String get medicationTime {
    return Intl.message(
      'Medication Time',
      name: 'medicationTime',
      desc: '',
      args: [],
    );
  }

  /// `Drugs`
  String get drugs {
    return Intl.message('Drugs', name: 'drugs', desc: '', args: []);
  }

  /// `Course Treatments`
  String get courseTreatments {
    return Intl.message(
      'Course Treatments',
      name: 'courseTreatments',
      desc: '',
      args: [],
    );
  }

  /// `No course treatments available.`
  String get noCourses {
    return Intl.message(
      'No course treatments available.',
      name: 'noCourses',
      desc: '',
      args: [],
    );
  }

  /// `Course Treatment Reminder`
  String get courseReminderTitle {
    return Intl.message(
      'Course Treatment Reminder',
      name: 'courseReminderTitle',
      desc: '',
      args: [],
    );
  }

  /// `Time to take your medications: {drugs}`
  String courseReminderBody(Object drugs) {
    return Intl.message(
      'Time to take your medications: $drugs',
      name: 'courseReminderBody',
      desc: '',
      args: [drugs],
    );
  }

  /// `Course treatment added successfully`
  String get courseAdded {
    return Intl.message(
      'Course treatment added successfully',
      name: 'courseAdded',
      desc: '',
      args: [],
    );
  }

  /// `Course treatment deleted successfully`
  String get courseDeleted {
    return Intl.message(
      'Course treatment deleted successfully',
      name: 'courseDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message('Add', name: 'add', desc: '', args: []);
  }

  /// `Save course`
  String get saveCourse {
    return Intl.message('Save course', name: 'saveCourse', desc: '', args: []);
  }

  /// `Please select the course start date.`
  String get selectCourseStartValidation {
    return Intl.message(
      'Please select the course start date.',
      name: 'selectCourseStartValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please select the course end date.`
  String get selectCourseEndValidation {
    return Intl.message(
      'Please select the course end date.',
      name: 'selectCourseEndValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please select the medication time.`
  String get selectMedicationTimeValidation {
    return Intl.message(
      'Please select the medication time.',
      name: 'selectMedicationTimeValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please add at least one drug.`
  String get noDrugsValidation {
    return Intl.message(
      'Please add at least one drug.',
      name: 'noDrugsValidation',
      desc: '',
      args: [],
    );
  }

  /// `Drug Name`
  String get drugName {
    return Intl.message('Drug Name', name: 'drugName', desc: '', args: []);
  }

  /// `Please enter the drug name`
  String get drugNameValidation {
    return Intl.message(
      'Please enter the drug name',
      name: 'drugNameValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in all fields correctly.`
  String get drugEntryValidation {
    return Intl.message(
      'Please fill in all fields correctly.',
      name: 'drugEntryValidation',
      desc: '',
      args: [],
    );
  }

  /// `Once`
  String get once {
    return Intl.message('Once', name: 'once', desc: '', args: []);
  }

  /// `Monthly`
  String get monthly {
    return Intl.message('Monthly', name: 'monthly', desc: '', args: []);
  }

  /// `Weekly`
  String get weekly {
    return Intl.message('Weekly', name: 'weekly', desc: '', args: []);
  }

  /// `Daily`
  String get daily {
    return Intl.message('Daily', name: 'daily', desc: '', args: []);
  }

  /// `Water Tracking`
  String get waterTracking {
    return Intl.message(
      'Water Tracking',
      name: 'waterTracking',
      desc: '',
      args: [],
    );
  }

  /// `Water is essential to maintain blood volume and regulate body temperature`
  String get waterTrackingDescription {
    return Intl.message(
      'Water is essential to maintain blood volume and regulate body temperature',
      name: 'waterTrackingDescription',
      desc: '',
      args: [],
    );
  }

  /// `No water records found.`
  String get noWaterRecords {
    return Intl.message(
      'No water records found.',
      name: 'noWaterRecords',
      desc: '',
      args: [],
    );
  }

  /// `Water record added successfully`
  String get waterRecordAdded {
    return Intl.message(
      'Water record added successfully',
      name: 'waterRecordAdded',
      desc: '',
      args: [],
    );
  }

  /// `Water record deleted successfully`
  String get waterRecordDeleted {
    return Intl.message(
      'Water record deleted successfully',
      name: 'waterRecordDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Add Water Record`
  String get addWaterRecord {
    return Intl.message(
      'Add Water Record',
      name: 'addWaterRecord',
      desc: '',
      args: [],
    );
  }

  /// `Water Amount`
  String get waterAmount {
    return Intl.message(
      'Water Amount',
      name: 'waterAmount',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid water amount`
  String get waterAmountValidation {
    return Intl.message(
      'Please enter a valid water amount',
      name: 'waterAmountValidation',
      desc: '',
      args: [],
    );
  }

  /// `Or enter custom water consumption`
  String get orEnterCustom {
    return Intl.message(
      'Or enter custom water consumption',
      name: 'orEnterCustom',
      desc: '',
      args: [],
    );
  }

  /// `Please select both date and time for measurement, or leave both empty.`
  String get selectDateTimeValidation {
    return Intl.message(
      'Please select both date and time for measurement, or leave both empty.',
      name: 'selectDateTimeValidation',
      desc: '',
      args: [],
    );
  }

  /// `Save Water Record`
  String get saveWaterRecord {
    return Intl.message(
      'Save Water Record',
      name: 'saveWaterRecord',
      desc: '',
      args: [],
    );
  }

  /// `{amount} ml`
  String amountMl(Object amount) {
    return Intl.message(
      '$amount ml',
      name: 'amountMl',
      desc: '',
      args: [amount],
    );
  }

  /// `{amount} (ml)`
  String amountMlInBraces(Object amount) {
    return Intl.message(
      '$amount (ml)',
      name: 'amountMlInBraces',
      desc: '',
      args: [amount],
    );
  }

  /// `{amount} L`
  String amountL(Object amount) {
    return Intl.message('$amount L', name: 'amountL', desc: '', args: [amount]);
  }

  /// `Water Reminders`
  String get waterReminders {
    return Intl.message(
      'Water Reminders',
      name: 'waterReminders',
      desc: '',
      args: [],
    );
  }

  /// `No notifications set.`
  String get noNotifications {
    return Intl.message(
      'No notifications set.',
      name: 'noNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Add Notification`
  String get addNotification {
    return Intl.message(
      'Add Notification',
      name: 'addNotification',
      desc: '',
      args: [],
    );
  }

  /// `Reminder Title`
  String get reminderTitle {
    return Intl.message(
      'Reminder Title',
      name: 'reminderTitle',
      desc: '',
      args: [],
    );
  }

  /// `Reminder Body`
  String get reminderBody {
    return Intl.message(
      'Reminder Body',
      name: 'reminderBody',
      desc: '',
      args: [],
    );
  }

  /// `Scheduled Time`
  String get scheduledTime {
    return Intl.message(
      'Scheduled Time',
      name: 'scheduledTime',
      desc: '',
      args: [],
    );
  }

  /// `Save Notification`
  String get saveNotification {
    return Intl.message(
      'Save Notification',
      name: 'saveNotification',
      desc: '',
      args: [],
    );
  }

  /// `Notification deleted`
  String get notificationDeleted {
    return Intl.message(
      'Notification deleted',
      name: 'notificationDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Notification added.`
  String get notificationAdded {
    return Intl.message(
      'Notification added.',
      name: 'notificationAdded',
      desc: '',
      args: [],
    );
  }

  /// `Please select both a date and time.`
  String get selectTimeValidation {
    return Intl.message(
      'Please select both a date and time.',
      name: 'selectTimeValidation',
      desc: '',
      args: [],
    );
  }

  /// `This field cannot be empty.`
  String get fieldCannotBeEmpty {
    return Intl.message(
      'This field cannot be empty.',
      name: 'fieldCannotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Drink Water`
  String get defaultReminderTitle {
    return Intl.message(
      'Drink Water',
      name: 'defaultReminderTitle',
      desc: '',
      args: [],
    );
  }

  /// `Time to drink water`
  String get defaultReminderBody {
    return Intl.message(
      'Time to drink water',
      name: 'defaultReminderBody',
      desc: '',
      args: [],
    );
  }

  /// `Temperature measurement`
  String get temperatureMeasurement {
    return Intl.message(
      'Temperature measurement',
      name: 'temperatureMeasurement',
      desc: '',
      args: [],
    );
  }

  /// `Temperature is the measurement of the hotness and coldness of a body`
  String get temperatureMeasurementDescription {
    return Intl.message(
      'Temperature is the measurement of the hotness and coldness of a body',
      name: 'temperatureMeasurementDescription',
      desc: '',
      args: [],
    );
  }

  /// `Temperature Tracking`
  String get temperatureTracking {
    return Intl.message(
      'Temperature Tracking',
      name: 'temperatureTracking',
      desc: '',
      args: [],
    );
  }

  /// `Add Measurement`
  String get addMeasurement {
    return Intl.message(
      'Add Measurement',
      name: 'addMeasurement',
      desc: '',
      args: [],
    );
  }

  /// `Temperature`
  String get temperature {
    return Intl.message('Temperature', name: 'temperature', desc: '', args: []);
  }

  /// `Save Measurement`
  String get saveMeasurement {
    return Intl.message(
      'Save Measurement',
      name: 'saveMeasurement',
      desc: '',
      args: [],
    );
  }

  /// `Measurement deleted`
  String get measurementDeleted {
    return Intl.message(
      'Measurement deleted',
      name: 'measurementDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Measurement added successfully.`
  String get measurementAdded {
    return Intl.message(
      'Measurement added successfully.',
      name: 'measurementAdded',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid temperature.`
  String get invalidTemperature {
    return Intl.message(
      'Please enter a valid temperature.',
      name: 'invalidTemperature',
      desc: '',
      args: [],
    );
  }

  /// `No measurements recorded.`
  String get noMeasurements {
    return Intl.message(
      'No measurements recorded.',
      name: 'noMeasurements',
      desc: '',
      args: [],
    );
  }

  /// `Not enough data`
  String get notEnoughData {
    return Intl.message(
      'Not enough data',
      name: 'notEnoughData',
      desc: '',
      args: [],
    );
  }

  /// `e.g. {amount}`
  String egAmount(Object amount) {
    return Intl.message(
      'e.g. $amount',
      name: 'egAmount',
      desc: '',
      args: [amount],
    );
  }

  /// `Temperature Reminders`
  String get temperatureReminders {
    return Intl.message(
      'Temperature Reminders',
      name: 'temperatureReminders',
      desc: '',
      args: [],
    );
  }

  /// `Blood pressure is the amount of force your blood uses to get through your arteries`
  String get bloodPressureTrackingDescription {
    return Intl.message(
      'Blood pressure is the amount of force your blood uses to get through your arteries',
      name: 'bloodPressureTrackingDescription',
      desc: '',
      args: [],
    );
  }

  /// `Blood Pressure Tracking`
  String get bloodPressureTracking {
    return Intl.message(
      'Blood Pressure Tracking',
      name: 'bloodPressureTracking',
      desc: '',
      args: [],
    );
  }

  /// `Add Blood Pressure Measurement`
  String get addBloodPressureMeasurement {
    return Intl.message(
      'Add Blood Pressure Measurement',
      name: 'addBloodPressureMeasurement',
      desc: '',
      args: [],
    );
  }

  /// `Systolic`
  String get systolic {
    return Intl.message('Systolic', name: 'systolic', desc: '', args: []);
  }

  /// `Diastolic`
  String get diastolic {
    return Intl.message('Diastolic', name: 'diastolic', desc: '', args: []);
  }

  /// `Invalid number.`
  String get invalidNumber {
    return Intl.message(
      'Invalid number.',
      name: 'invalidNumber',
      desc: '',
      args: [],
    );
  }

  /// `Recheck Blood Pressure`
  String get recheckBloodPressure {
    return Intl.message(
      'Recheck Blood Pressure',
      name: 'recheckBloodPressure',
      desc: '',
      args: [],
    );
  }

  /// `Your blood pressure deviated from the normal range. Please recheck it.`
  String get recheckBloodPressureDesc {
    return Intl.message(
      'Your blood pressure deviated from the normal range. Please recheck it.',
      name: 'recheckBloodPressureDesc',
      desc: '',
      args: [],
    );
  }

  /// `Sys. {amount} mmHg`
  String systolicShortAmount(Object amount) {
    return Intl.message(
      'Sys. $amount mmHg',
      name: 'systolicShortAmount',
      desc: '',
      args: [amount],
    );
  }

  /// `Dias. {amount} mmHg`
  String diastolicShortAmount(Object amount) {
    return Intl.message(
      'Dias. $amount mmHg',
      name: 'diastolicShortAmount',
      desc: '',
      args: [amount],
    );
  }

  /// `Systolic: {sys} mmHg, Diastolic: {diastolic} mmHg`
  String systolicAndDiastolic(Object sys, Object diastolic) {
    return Intl.message(
      'Systolic: $sys mmHg, Diastolic: $diastolic mmHg',
      name: 'systolicAndDiastolic',
      desc: '',
      args: [sys, diastolic],
    );
  }

  /// `Blood Pressure Reminders`
  String get bloodPressureReminders {
    return Intl.message(
      'Blood Pressure Reminders',
      name: 'bloodPressureReminders',
      desc: '',
      args: [],
    );
  }

  /// `Recheck Blood Pressure`
  String get defaultReminderTitleBP {
    return Intl.message(
      'Recheck Blood Pressure',
      name: 'defaultReminderTitleBP',
      desc: '',
      args: [],
    );
  }

  /// `Your blood pressure deviated from normal range. Please recheck in 1 hour.`
  String get defaultReminderBodyBP {
    return Intl.message(
      'Your blood pressure deviated from normal range. Please recheck in 1 hour.',
      name: 'defaultReminderBodyBP',
      desc: '',
      args: [],
    );
  }

  /// `Select Theme Color`
  String get selectThemeColor {
    return Intl.message(
      'Select Theme Color',
      name: 'selectThemeColor',
      desc: '',
      args: [],
    );
  }

  /// `Change Theme Color`
  String get changeThemeColor {
    return Intl.message(
      'Change Theme Color',
      name: 'changeThemeColor',
      desc: '',
      args: [],
    );
  }

  /// `Change the app theme color to your preference`
  String get changeThemeColorDesc {
    return Intl.message(
      'Change the app theme color to your preference',
      name: 'changeThemeColorDesc',
      desc: '',
      args: [],
    );
  }

  /// `Add Stress & Mood Measurement`
  String get addStressAndMoodMeasurement {
    return Intl.message(
      'Add Stress & Mood Measurement',
      name: 'addStressAndMoodMeasurement',
      desc: '',
      args: [],
    );
  }

  /// `Stress and Mood Tracking`
  String get stressAndMoodTracking {
    return Intl.message(
      'Stress and Mood Tracking',
      name: 'stressAndMoodTracking',
      desc: '',
      args: [],
    );
  }

  /// `Stress`
  String get stress {
    return Intl.message('Stress', name: 'stress', desc: '', args: []);
  }

  /// `Select Mood`
  String get selectMood {
    return Intl.message('Select Mood', name: 'selectMood', desc: '', args: []);
  }

  /// `Stress Graph`
  String get stressGraph {
    return Intl.message(
      'Stress Graph',
      name: 'stressGraph',
      desc: '',
      args: [],
    );
  }

  /// `Mood Graph`
  String get moodGraph {
    return Intl.message('Mood Graph', name: 'moodGraph', desc: '', args: []);
  }

  /// `Please select a mood.`
  String get selectMoodValidation {
    return Intl.message(
      'Please select a mood.',
      name: 'selectMoodValidation',
      desc: '',
      args: [],
    );
  }

  /// `Stress: {stress} points\nMood: {mood}`
  String stressAndMoodPoints(Object stress, Object mood) {
    return Intl.message(
      'Stress: $stress points\nMood: $mood',
      name: 'stressAndMoodPoints',
      desc: '',
      args: [stress, mood],
    );
  }

  /// `Sleep Analysis`
  String get sleepAnalysisTitle {
    return Intl.message(
      'Sleep Analysis',
      name: 'sleepAnalysisTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sleep is a body process that allows your body to rest, repair and restore itself`
  String get sleepAnalysisDesc {
    return Intl.message(
      'Sleep is a body process that allows your body to rest, repair and restore itself',
      name: 'sleepAnalysisDesc',
      desc: '',
      args: [],
    );
  }

  /// `No sleep data for last night.`
  String get noSleepDataLastNight {
    return Intl.message(
      'No sleep data for last night.',
      name: 'noSleepDataLastNight',
      desc: '',
      args: [],
    );
  }

  /// `Total Sleep: {h} h {m} m`
  String sleepChartOverview(Object h, Object m) {
    return Intl.message(
      'Total Sleep: $h h $m m',
      name: 'sleepChartOverview',
      desc: '',
      args: [h, m],
    );
  }

  /// `Sleep Segments`
  String get sleepSegmentsTitle {
    return Intl.message(
      'Sleep Segments',
      name: 'sleepSegmentsTitle',
      desc: '',
      args: [],
    );
  }

  /// `{type}`
  String sleepSegmentType(Object type) {
    return Intl.message(
      '$type',
      name: 'sleepSegmentType',
      desc: '',
      args: [type],
    );
  }

  /// `min`
  String get minutesShort {
    return Intl.message('min', name: 'minutesShort', desc: '', args: []);
  }

  /// `Show Sleep Segments`
  String get showSleepSegments {
    return Intl.message(
      'Show Sleep Segments',
      name: 'showSleepSegments',
      desc: '',
      args: [],
    );
  }

  /// `Hide Sleep Segments`
  String get hideSleepSegments {
    return Intl.message(
      'Hide Sleep Segments',
      name: 'hideSleepSegments',
      desc: '',
      args: [],
    );
  }

  /// `Sleep Period: {start} - {end}`
  String sleepPeriod(Object start, Object end) {
    return Intl.message(
      'Sleep Period: $start - $end',
      name: 'sleepPeriod',
      desc: '',
      args: [start, end],
    );
  }

  /// `Total Sleep (including awake): {time}`
  String totalSleepIncluding(Object time) {
    return Intl.message(
      'Total Sleep (including awake): $time',
      name: 'totalSleepIncluding',
      desc: '',
      args: [time],
    );
  }

  /// `Total Sleep (excluding awake): {time}`
  String totalSleepExcluding(Object time) {
    return Intl.message(
      'Total Sleep (excluding awake): $time',
      name: 'totalSleepExcluding',
      desc: '',
      args: [time],
    );
  }

  /// `Very Bad`
  String get sleepScoreVeryBad {
    return Intl.message(
      'Very Bad',
      name: 'sleepScoreVeryBad',
      desc: '',
      args: [],
    );
  }

  /// `😫`
  String get sleepScoreEmojiVeryBad {
    return Intl.message(
      '😫',
      name: 'sleepScoreEmojiVeryBad',
      desc: '',
      args: [],
    );
  }

  /// `Bad`
  String get sleepScoreBad {
    return Intl.message('Bad', name: 'sleepScoreBad', desc: '', args: []);
  }

  /// `😞`
  String get sleepScoreEmojiBad {
    return Intl.message('😞', name: 'sleepScoreEmojiBad', desc: '', args: []);
  }

  /// `Poor`
  String get sleepScorePoor {
    return Intl.message('Poor', name: 'sleepScorePoor', desc: '', args: []);
  }

  /// `😐`
  String get sleepScoreEmojiPoor {
    return Intl.message('😐', name: 'sleepScoreEmojiPoor', desc: '', args: []);
  }

  /// `Average`
  String get sleepScoreAverage {
    return Intl.message(
      'Average',
      name: 'sleepScoreAverage',
      desc: '',
      args: [],
    );
  }

  /// `🙂`
  String get sleepScoreEmojiAverage {
    return Intl.message(
      '🙂',
      name: 'sleepScoreEmojiAverage',
      desc: '',
      args: [],
    );
  }

  /// `Good`
  String get sleepScoreGood {
    return Intl.message('Good', name: 'sleepScoreGood', desc: '', args: []);
  }

  /// `😊`
  String get sleepScoreEmojiGood {
    return Intl.message('😊', name: 'sleepScoreEmojiGood', desc: '', args: []);
  }

  /// `Excellent`
  String get sleepScoreExcellent {
    return Intl.message(
      'Excellent',
      name: 'sleepScoreExcellent',
      desc: '',
      args: [],
    );
  }

  /// `😄`
  String get sleepScoreEmojiExcellent {
    return Intl.message(
      '😄',
      name: 'sleepScoreEmojiExcellent',
      desc: '',
      args: [],
    );
  }

  /// `Efficiency`
  String get sleepStatEfficiency {
    return Intl.message(
      'Efficiency',
      name: 'sleepStatEfficiency',
      desc: '',
      args: [],
    );
  }

  /// `Awake`
  String get sleepStatAwake {
    return Intl.message('Awake', name: 'sleepStatAwake', desc: '', args: []);
  }

  /// `Deep Sleep`
  String get sleepStatDeep {
    return Intl.message(
      'Deep Sleep',
      name: 'sleepStatDeep',
      desc: '',
      args: [],
    );
  }

  /// `REM Sleep`
  String get sleepStatRem {
    return Intl.message('REM Sleep', name: 'sleepStatRem', desc: '', args: []);
  }

  /// `Light Sleep`
  String get sleepStatLight {
    return Intl.message(
      'Light Sleep',
      name: 'sleepStatLight',
      desc: '',
      args: [],
    );
  }

  /// `Sleep Statistics`
  String get sleepStatisticsTitle {
    return Intl.message(
      'Sleep Statistics',
      name: 'sleepStatisticsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sleep Stage Lengths`
  String get sleepStageLengthsTitle {
    return Intl.message(
      'Sleep Stage Lengths',
      name: 'sleepStageLengthsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Awake`
  String get sleepStageAwake {
    return Intl.message('Awake', name: 'sleepStageAwake', desc: '', args: []);
  }

  /// `REM`
  String get sleepStageRem {
    return Intl.message('REM', name: 'sleepStageRem', desc: '', args: []);
  }

  /// `Light`
  String get sleepStageLight {
    return Intl.message('Light', name: 'sleepStageLight', desc: '', args: []);
  }

  /// `Deep`
  String get sleepStageDeep {
    return Intl.message('Deep', name: 'sleepStageDeep', desc: '', args: []);
  }

  /// `Select Night`
  String get selectNight {
    return Intl.message(
      'Select Night',
      name: 'selectNight',
      desc: '',
      args: [],
    );
  }

  /// `Sleep Score`
  String get sleepScoreTitle {
    return Intl.message(
      'Sleep Score',
      name: 'sleepScoreTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sleep Overview`
  String get sleepOverviewTitle {
    return Intl.message(
      'Sleep Overview',
      name: 'sleepOverviewTitle',
      desc: '',
      args: [],
    );
  }

  /// `About Sleep Score`
  String get sleepScoreInfoTitle {
    return Intl.message(
      'About Sleep Score',
      name: 'sleepScoreInfoTitle',
      desc: '',
      args: [],
    );
  }

  /// `What is Sleep Score?`
  String get sleepScoreInfoWhatIsTitle {
    return Intl.message(
      'What is Sleep Score?',
      name: 'sleepScoreInfoWhatIsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sleep Score is a metric that aggregates various aspects of your sleep, including your total sleep duration, sleep efficiency (the percentage of time you actually sleep when in bed), and the quality of your sleep stages. It is expressed as a number between 0 and 100, where higher scores indicate better sleep quality.`
  String get sleepScoreInfoWhatIsContent {
    return Intl.message(
      'Sleep Score is a metric that aggregates various aspects of your sleep, including your total sleep duration, sleep efficiency (the percentage of time you actually sleep when in bed), and the quality of your sleep stages. It is expressed as a number between 0 and 100, where higher scores indicate better sleep quality.',
      name: 'sleepScoreInfoWhatIsContent',
      desc: '',
      args: [],
    );
  }

  /// `How is Sleep Score Calculated?`
  String get sleepScoreInfoCalculationTitle {
    return Intl.message(
      'How is Sleep Score Calculated?',
      name: 'sleepScoreInfoCalculationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Our algorithm calculates your sleep efficiency by dividing your sleep time (excluding periods when you were awake) by your total time in bed. It also compares your total sleep duration to an ideal sleep duration of 8 hours. These two factors are averaged and scaled to a 0–100 metric, resulting in your Sleep Score.`
  String get sleepScoreInfoCalculationContent {
    return Intl.message(
      'Our algorithm calculates your sleep efficiency by dividing your sleep time (excluding periods when you were awake) by your total time in bed. It also compares your total sleep duration to an ideal sleep duration of 8 hours. These two factors are averaged and scaled to a 0–100 metric, resulting in your Sleep Score.',
      name: 'sleepScoreInfoCalculationContent',
      desc: '',
      args: [],
    );
  }

  /// `Why is Sleep Score Important?`
  String get sleepScoreInfoImportanceTitle {
    return Intl.message(
      'Why is Sleep Score Important?',
      name: 'sleepScoreInfoImportanceTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your Sleep Score gives you a quick insight into the quality of your sleep. A higher score suggests that you are getting restful, restorative sleep, which is crucial for your overall health, mood, and daily performance. Tracking your Sleep Score over time can help you identify patterns, adjust your habits, and take control of your well-being.`
  String get sleepScoreInfoImportanceContent {
    return Intl.message(
      'Your Sleep Score gives you a quick insight into the quality of your sleep. A higher score suggests that you are getting restful, restorative sleep, which is crucial for your overall health, mood, and daily performance. Tracking your Sleep Score over time can help you identify patterns, adjust your habits, and take control of your well-being.',
      name: 'sleepScoreInfoImportanceContent',
      desc: '',
      args: [],
    );
  }

  /// `Your Sleep Score`
  String get sleepScoreInfoYourScoreTitle {
    return Intl.message(
      'Your Sleep Score',
      name: 'sleepScoreInfoYourScoreTitle',
      desc: '',
      args: [],
    );
  }

  /// `Based on our analysis, your Sleep Score is {score} ({label}). This score reflects your sleep efficiency and total sleep duration. Use this information as a guideline to help improve your sleep habits and overall health.`
  String sleepScoreInfoYourScoreContent(Object score, Object label) {
    return Intl.message(
      'Based on our analysis, your Sleep Score is $score ($label). This score reflects your sleep efficiency and total sleep duration. Use this information as a guideline to help improve your sleep habits and overall health.',
      name: 'sleepScoreInfoYourScoreContent',
      desc: '',
      args: [score, label],
    );
  }

  /// `About Sleep Statistics`
  String get sleepStatisticsInfoTitle {
    return Intl.message(
      'About Sleep Statistics',
      name: 'sleepStatisticsInfoTitle',
      desc: '',
      args: [],
    );
  }

  /// `What are Sleep Statistics?`
  String get sleepStatisticsInfoWhatIsTitle {
    return Intl.message(
      'What are Sleep Statistics?',
      name: 'sleepStatisticsInfoWhatIsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sleep statistics are quantitative measures that provide insight into your sleep quality and architecture. They include metrics such as sleep efficiency, as well as the percentage of time spent in various sleep stages like light, deep, and REM sleep.`
  String get sleepStatisticsInfoWhatIsContent {
    return Intl.message(
      'Sleep statistics are quantitative measures that provide insight into your sleep quality and architecture. They include metrics such as sleep efficiency, as well as the percentage of time spent in various sleep stages like light, deep, and REM sleep.',
      name: 'sleepStatisticsInfoWhatIsContent',
      desc: '',
      args: [],
    );
  }

  /// `Understanding Sleep Efficiency`
  String get sleepStatisticsInfoEfficiencyTitle {
    return Intl.message(
      'Understanding Sleep Efficiency',
      name: 'sleepStatisticsInfoEfficiencyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sleep efficiency is the ratio of the time you actually spend asleep to the total time you spend in bed. High sleep efficiency indicates that you are getting continuous and restorative sleep.`
  String get sleepStatisticsInfoEfficiencyContent {
    return Intl.message(
      'Sleep efficiency is the ratio of the time you actually spend asleep to the total time you spend in bed. High sleep efficiency indicates that you are getting continuous and restorative sleep.',
      name: 'sleepStatisticsInfoEfficiencyContent',
      desc: '',
      args: [],
    );
  }

  /// `Sleep Stages Breakdown`
  String get sleepStatisticsInfoStagesTitle {
    return Intl.message(
      'Sleep Stages Breakdown',
      name: 'sleepStatisticsInfoStagesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your sleep is divided into several distinct stages: Awake, Light Sleep, Deep Sleep, and REM Sleep. Each stage plays a crucial role in recovery, memory consolidation, and overall well-being.`
  String get sleepStatisticsInfoStagesContent {
    return Intl.message(
      'Your sleep is divided into several distinct stages: Awake, Light Sleep, Deep Sleep, and REM Sleep. Each stage plays a crucial role in recovery, memory consolidation, and overall well-being.',
      name: 'sleepStatisticsInfoStagesContent',
      desc: '',
      args: [],
    );
  }

  /// `Your Sleep Statistics`
  String get sleepStatisticsInfoYourStatsTitle {
    return Intl.message(
      'Your Sleep Statistics',
      name: 'sleepStatisticsInfoYourStatsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Based on our analysis, your sleep efficiency is {efficiency}%. Your awake time is {awake}%, Deep Sleep is {deep}%, REM Sleep is {rem}%, and Light Sleep is {light}%. These values help you understand your sleep quality and pinpoint areas for improvement.`
  String sleepStatisticsInfoYourStatsContent(
    Object efficiency,
    Object awake,
    Object deep,
    Object rem,
    Object light,
  ) {
    return Intl.message(
      'Based on our analysis, your sleep efficiency is $efficiency%. Your awake time is $awake%, Deep Sleep is $deep%, REM Sleep is $rem%, and Light Sleep is $light%. These values help you understand your sleep quality and pinpoint areas for improvement.',
      name: 'sleepStatisticsInfoYourStatsContent',
      desc: '',
      args: [efficiency, awake, deep, rem, light],
    );
  }

  /// `About Sleep Stage Lengths`
  String get sleepStageLengthsInfoTitle {
    return Intl.message(
      'About Sleep Stage Lengths',
      name: 'sleepStageLengthsInfoTitle',
      desc: '',
      args: [],
    );
  }

  /// `What are Sleep Stage Lengths?`
  String get sleepStageLengthsInfoWhatIsTitle {
    return Intl.message(
      'What are Sleep Stage Lengths?',
      name: 'sleepStageLengthsInfoWhatIsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sleep stage lengths refer to the absolute durations you spend in each stage of sleep—such as time spent awake, in light sleep, deep sleep, and REM sleep. These values provide insights into your sleep architecture and overall sleep quality.`
  String get sleepStageLengthsInfoWhatIsContent {
    return Intl.message(
      'Sleep stage lengths refer to the absolute durations you spend in each stage of sleep—such as time spent awake, in light sleep, deep sleep, and REM sleep. These values provide insights into your sleep architecture and overall sleep quality.',
      name: 'sleepStageLengthsInfoWhatIsContent',
      desc: '',
      args: [],
    );
  }

  /// `How to Interpret Your Sleep Stage Durations`
  String get sleepStageLengthsInfoInterpretationTitle {
    return Intl.message(
      'How to Interpret Your Sleep Stage Durations',
      name: 'sleepStageLengthsInfoInterpretationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Longer durations in deep and REM sleep often indicate more restorative sleep, while extended periods of being awake or in light sleep might suggest fragmented or less efficient sleep. Knowing these durations can help you understand your sleep patterns and identify areas for improvement.`
  String get sleepStageLengthsInfoInterpretationContent {
    return Intl.message(
      'Longer durations in deep and REM sleep often indicate more restorative sleep, while extended periods of being awake or in light sleep might suggest fragmented or less efficient sleep. Knowing these durations can help you understand your sleep patterns and identify areas for improvement.',
      name: 'sleepStageLengthsInfoInterpretationContent',
      desc: '',
      args: [],
    );
  }

  /// `Why are Sleep Stage Lengths Important?`
  String get sleepStageLengthsInfoImportanceTitle {
    return Intl.message(
      'Why are Sleep Stage Lengths Important?',
      name: 'sleepStageLengthsInfoImportanceTitle',
      desc: '',
      args: [],
    );
  }

  /// `The lengths of each sleep stage affect how well your body and mind recover during sleep. A balanced distribution with sufficient deep and REM sleep is crucial for memory consolidation, physical recovery, and overall well-being.`
  String get sleepStageLengthsInfoImportanceContent {
    return Intl.message(
      'The lengths of each sleep stage affect how well your body and mind recover during sleep. A balanced distribution with sufficient deep and REM sleep is crucial for memory consolidation, physical recovery, and overall well-being.',
      name: 'sleepStageLengthsInfoImportanceContent',
      desc: '',
      args: [],
    );
  }

  /// `Your Sleep Stage Lengths`
  String get sleepStageLengthsInfoYourStatsTitle {
    return Intl.message(
      'Your Sleep Stage Lengths',
      name: 'sleepStageLengthsInfoYourStatsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Based on our analysis, your Awake time is {awake}, Deep Sleep is {deep}, REM Sleep is {rem}, and Light Sleep is {light}. These values help you understand the distribution of your sleep and guide you towards better sleep habits.`
  String sleepStageLengthsInfoYourStatsContent(
    Object awake,
    Object deep,
    Object rem,
    Object light,
  ) {
    return Intl.message(
      'Based on our analysis, your Awake time is $awake, Deep Sleep is $deep, REM Sleep is $rem, and Light Sleep is $light. These values help you understand the distribution of your sleep and guide you towards better sleep habits.',
      name: 'sleepStageLengthsInfoYourStatsContent',
      desc: '',
      args: [awake, deep, rem, light],
    );
  }

  /// `Awake Stage`
  String get sleepStageAwakeInfoTitle {
    return Intl.message(
      'Awake Stage',
      name: 'sleepStageAwakeInfoTitle',
      desc: '',
      args: [],
    );
  }

  /// `The Awake Stage represents periods when you are in bed but not sleeping. Occasional brief awakenings are normal; however, extended periods of wakefulness can disrupt sleep quality.`
  String get sleepStageAwakeInfoContent {
    return Intl.message(
      'The Awake Stage represents periods when you are in bed but not sleeping. Occasional brief awakenings are normal; however, extended periods of wakefulness can disrupt sleep quality.',
      name: 'sleepStageAwakeInfoContent',
      desc: '',
      args: [],
    );
  }

  /// `REM Sleep`
  String get sleepStageRemInfoTitle {
    return Intl.message(
      'REM Sleep',
      name: 'sleepStageRemInfoTitle',
      desc: '',
      args: [],
    );
  }

  /// `REM (Rapid Eye Movement) Sleep is when you experience most of your dreams and your brain is highly active. It is important for emotional regulation and memory consolidation.`
  String get sleepStageRemInfoContent {
    return Intl.message(
      'REM (Rapid Eye Movement) Sleep is when you experience most of your dreams and your brain is highly active. It is important for emotional regulation and memory consolidation.',
      name: 'sleepStageRemInfoContent',
      desc: '',
      args: [],
    );
  }

  /// `Light Sleep`
  String get sleepStageLightInfoTitle {
    return Intl.message(
      'Light Sleep',
      name: 'sleepStageLightInfoTitle',
      desc: '',
      args: [],
    );
  }

  /// `Light Sleep is the transitional phase between wakefulness and deeper sleep stages. It helps your body prepare for deep sleep and is common during a healthy sleep cycle.`
  String get sleepStageLightInfoContent {
    return Intl.message(
      'Light Sleep is the transitional phase between wakefulness and deeper sleep stages. It helps your body prepare for deep sleep and is common during a healthy sleep cycle.',
      name: 'sleepStageLightInfoContent',
      desc: '',
      args: [],
    );
  }

  /// `Deep Sleep`
  String get sleepStageDeepInfoTitle {
    return Intl.message(
      'Deep Sleep',
      name: 'sleepStageDeepInfoTitle',
      desc: '',
      args: [],
    );
  }

  /// `Deep Sleep is the most restorative phase of sleep, crucial for physical recovery and immune system strengthening. Adequate deep sleep is normally associated with feeling refreshed in the morning.`
  String get sleepStageDeepInfoContent {
    return Intl.message(
      'Deep Sleep is the most restorative phase of sleep, crucial for physical recovery and immune system strengthening. Adequate deep sleep is normally associated with feeling refreshed in the morning.',
      name: 'sleepStageDeepInfoContent',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get unknown {
    return Intl.message('Unknown', name: 'unknown', desc: '', args: []);
  }

  /// `Mood is the way someone feels due to a variety of thought, reactions or emotions over a long period of time`
  String get stressAndMoodTrackingDesc {
    return Intl.message(
      'Mood is the way someone feels due to a variety of thought, reactions or emotions over a long period of time',
      name: 'stressAndMoodTrackingDesc',
      desc: '',
      args: [],
    );
  }

  /// `Blood Sugar Tracking`
  String get bloodSugarTracking {
    return Intl.message(
      'Blood Sugar Tracking',
      name: 'bloodSugarTracking',
      desc: '',
      args: [],
    );
  }

  /// `Blood glucose, or blood sugar, is the main sugar found in your blood`
  String get bloodSugarTrackingDesc {
    return Intl.message(
      'Blood glucose, or blood sugar, is the main sugar found in your blood',
      name: 'bloodSugarTrackingDesc',
      desc: '',
      args: [],
    );
  }

  /// `Blood Sugar Reminders`
  String get bloodSugarReminders {
    return Intl.message(
      'Blood Sugar Reminders',
      name: 'bloodSugarReminders',
      desc: '',
      args: [],
    );
  }

  /// `No blood sugar measurements available.`
  String get noBloodSugarMeasurements {
    return Intl.message(
      'No blood sugar measurements available.',
      name: 'noBloodSugarMeasurements',
      desc: '',
      args: [],
    );
  }

  /// `Set a reminder to check your blood sugar levels.`
  String get bloodSugarReminderInfo {
    return Intl.message(
      'Set a reminder to check your blood sugar levels.',
      name: 'bloodSugarReminderInfo',
      desc: '',
      args: [],
    );
  }

  /// `Blood Sugar`
  String get bloodSugar {
    return Intl.message('Blood Sugar', name: 'bloodSugar', desc: '', args: []);
  }

  /// `e.g., {amount} mg/dL`
  String egBloodSugar(Object amount) {
    return Intl.message(
      'e.g., $amount mg/dL',
      name: 'egBloodSugar',
      desc: '',
      args: [amount],
    );
  }

  /// `Invalid blood sugar value.`
  String get invalidBloodSugar {
    return Intl.message(
      'Invalid blood sugar value.',
      name: 'invalidBloodSugar',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message('Gender', name: 'gender', desc: '', args: []);
  }

  /// `Height (cm)`
  String get height {
    return Intl.message('Height (cm)', name: 'height', desc: '', args: []);
  }

  /// `Weight (kg)`
  String get weight {
    return Intl.message('Weight (kg)', name: 'weight', desc: '', args: []);
  }

  /// `Water Consumption (ml)`
  String get waterConsumption {
    return Intl.message(
      'Water Consumption (ml)',
      name: 'waterConsumption',
      desc: '',
      args: [],
    );
  }

  /// `Calories Burned in One Day`
  String get caloriesBurnInOneDay {
    return Intl.message(
      'Calories Burned in One Day',
      name: 'caloriesBurnInOneDay',
      desc: '',
      args: [],
    );
  }

  /// `Desired Steps`
  String get desiredSteps {
    return Intl.message(
      'Desired Steps',
      name: 'desiredSteps',
      desc: '',
      args: [],
    );
  }

  /// `Save Profile`
  String get saveProfile {
    return Intl.message(
      'Save Profile',
      name: 'saveProfile',
      desc: '',
      args: [],
    );
  }

  /// `Profile updated successfully.`
  String get profileUpdated {
    return Intl.message(
      'Profile updated successfully.',
      name: 'profileUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Profile update failed.`
  String get profileUpdateFailed {
    return Intl.message(
      'Profile update failed.',
      name: 'profileUpdateFailed',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Change the app language`
  String get changeLanguageDesc {
    return Intl.message(
      'Change the app language',
      name: 'changeLanguageDesc',
      desc: '',
      args: [],
    );
  }

  /// `Edit your profile information`
  String get editProfileDesc {
    return Intl.message(
      'Edit your profile information',
      name: 'editProfileDesc',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `Ukrainian`
  String get ukrainian {
    return Intl.message('Ukrainian', name: 'ukrainian', desc: '', args: []);
  }

  /// `An error occurred: {error}`
  String anErrorOccurred(Object error) {
    return Intl.message(
      'An error occurred: $error',
      name: 'anErrorOccurred',
      desc: '',
      args: [error],
    );
  }

  /// `Data synced successfully`
  String get dataSyncedSuccessfully {
    return Intl.message(
      'Data synced successfully',
      name: 'dataSyncedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Sync data to the cloud`
  String get syncData {
    return Intl.message(
      'Sync data to the cloud',
      name: 'syncData',
      desc: '',
      args: [],
    );
  }

  /// `Your data will be synced to the cloud for backup and recovery.`
  String get syncDataDecs {
    return Intl.message(
      'Your data will be synced to the cloud for backup and recovery.',
      name: 'syncDataDecs',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Strings> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'uk'),
    ];
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

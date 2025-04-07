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

  /// `Clear Filter`
  String get clearFilter {
    return Intl.message(
      'Clear Filter',
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

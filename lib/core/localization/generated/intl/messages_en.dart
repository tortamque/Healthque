// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(amount) => "${amount}km";

  static String m1(amount) => "${amount} L";

  static String m2(amount) => "${amount}m";

  static String m3(amount) => "${amount} ml";

  static String m4(amount) => "${amount} (ml)";

  static String m5(ammount) => "${ammount}%";

  static String m6(amount) => "${amount} steps";

  static String m7(amount) => "${amount} workouts";

  static String m8(amount) => "${amount} kcal";

  static String m9(error) => "An error occurred: ${error}";

  static String m10(bmr) =>
      "Tip: We calculated it for you (${bmr} calories/day). You can change it if you know your body better.";

  static String m11(drugs) => "Time to take your medications: ${drugs}";

  static String m12(type) => "Don\'t forget your ${type} workout today!";

  static String m13(amount) => "Dias. ${amount} mmHg";

  static String m14(amount) => "e.g. ${amount}";

  static String m15(amount) => "e.g., ${amount} mg/dL";

  static String m16(hours, minutes) => "${hours} h ${minutes} m";

  static String m17(user) => "Successfully logged in as ${user}";

  static String m18(minutes) => "${minutes} m";

  static String m19(minutes) => "${minutes} minutes";

  static String m20(h, m) => "Total Sleep: ${h} h ${m} m";

  static String m21(hours, minutes) => "${hours}h ${minutes}m";

  static String m22(start, end) => "Sleep Period: ${start} - ${end}";

  static String m23(score, label) =>
      "Based on our analysis, your Sleep Score is ${score} (${label}). This score reflects your sleep efficiency and total sleep duration. Use this information as a guideline to help improve your sleep habits and overall health.";

  static String m24(type) => "${type}";

  static String m25(awake, deep, rem, light) =>
      "Based on our analysis, your Awake time is ${awake}, Deep Sleep is ${deep}, REM Sleep is ${rem}, and Light Sleep is ${light}. These values help you understand the distribution of your sleep and guide you towards better sleep habits.";

  static String m26(efficiency, awake, deep, rem, light) =>
      "Based on our analysis, your sleep efficiency is ${efficiency}%. Your awake time is ${awake}%, Deep Sleep is ${deep}%, REM Sleep is ${rem}%, and Light Sleep is ${light}%. These values help you understand your sleep quality and pinpoint areas for improvement.";

  static String m27(stress, mood) => "Stress: ${stress} points\nMood: ${mood}";

  static String m28(sys, diastolic) =>
      "Systolic: ${sys} mmHg, Diastolic: ${diastolic} mmHg";

  static String m29(amount) => "Sys. ${amount} mmHg";

  static String m30(time) => "Total Sleep (excluding awake): ${time}";

  static String m31(time) => "Total Sleep (including awake): ${time}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "activity": MessageLookupByLibrary.simpleMessage("Activity"),
    "activityAnalysisText": MessageLookupByLibrary.simpleMessage(
      "Activity analysis",
    ),
    "add": MessageLookupByLibrary.simpleMessage("Add"),
    "addANewWorkout": MessageLookupByLibrary.simpleMessage("Add a new workout"),
    "addBloodPressureMeasurement": MessageLookupByLibrary.simpleMessage(
      "Add Blood Pressure Measurement",
    ),
    "addCourse": MessageLookupByLibrary.simpleMessage("Add Course"),
    "addDrug": MessageLookupByLibrary.simpleMessage("Add Drug"),
    "addDrugs": MessageLookupByLibrary.simpleMessage("Add Drugs"),
    "addMeasurement": MessageLookupByLibrary.simpleMessage("Add Measurement"),
    "addMedication": MessageLookupByLibrary.simpleMessage("Add Medication"),
    "addMedicationButton": MessageLookupByLibrary.simpleMessage(
      "Add Medication",
    ),
    "addNotification": MessageLookupByLibrary.simpleMessage("Add Notification"),
    "addStressAndMoodMeasurement": MessageLookupByLibrary.simpleMessage(
      "Add Stress & Mood Measurement",
    ),
    "addWaterRecord": MessageLookupByLibrary.simpleMessage("Add Water Record"),
    "addWorkout": MessageLookupByLibrary.simpleMessage("Add Workout"),
    "addedOn": MessageLookupByLibrary.simpleMessage("Added on"),
    "additionalNotes": MessageLookupByLibrary.simpleMessage("Additional Notes"),
    "age": MessageLookupByLibrary.simpleMessage("Age"),
    "ageMustBeLessThan120": MessageLookupByLibrary.simpleMessage(
      "Age must be valid and less than 120",
    ),
    "all": MessageLookupByLibrary.simpleMessage("All"),
    "allYourActivitiesText": MessageLookupByLibrary.simpleMessage(
      "All your activities",
    ),
    "amountKm": m0,
    "amountL": m1,
    "amountM": m2,
    "amountMl": m3,
    "amountMlInBraces": m4,
    "amountOfEachWorkoutType": MessageLookupByLibrary.simpleMessage(
      "Amount of each workout type",
    ),
    "amountPercentage": m5,
    "amountSteps": m6,
    "amountWorkouts": m7,
    "amoutKcal": m8,
    "anErrorOccurred": m9,
    "applyFilter": MessageLookupByLibrary.simpleMessage("Apply Filter"),
    "bloodOxygenSaturation": MessageLookupByLibrary.simpleMessage(
      "Blood oxygen saturation",
    ),
    "bloodPressureReminders": MessageLookupByLibrary.simpleMessage(
      "Blood Pressure Reminders",
    ),
    "bloodPressureTracking": MessageLookupByLibrary.simpleMessage(
      "Blood Pressure Tracking",
    ),
    "bloodPressureTrackingDescription": MessageLookupByLibrary.simpleMessage(
      "Blood pressure is the amount of force your blood uses to get through your arteries",
    ),
    "bloodSugar": MessageLookupByLibrary.simpleMessage("Blood Sugar"),
    "bloodSugarReminderInfo": MessageLookupByLibrary.simpleMessage(
      "Set a reminder to check your blood sugar levels.",
    ),
    "bloodSugarReminders": MessageLookupByLibrary.simpleMessage(
      "Blood Sugar Reminders",
    ),
    "bloodSugarTracking": MessageLookupByLibrary.simpleMessage(
      "Blood Sugar Tracking",
    ),
    "bloodSugarTrackingDesc": MessageLookupByLibrary.simpleMessage(
      "Blood glucose, or blood sugar, is the main sugar found in your blood",
    ),
    "bmrTip": m10,
    "bouldering": MessageLookupByLibrary.simpleMessage("Bouldering"),
    "calculateBmrUsingFormula": MessageLookupByLibrary.simpleMessage(
      "Calculate BMR using formula",
    ),
    "caloriesBurnInOneDay": MessageLookupByLibrary.simpleMessage(
      "Calories Burned in One Day",
    ),
    "caloriesBurnedDuringWorkouts": MessageLookupByLibrary.simpleMessage(
      "Calories burned during workouts",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "capsule": MessageLookupByLibrary.simpleMessage("Capsule"),
    "changeLanguage": MessageLookupByLibrary.simpleMessage("Change Language"),
    "changeLanguageDesc": MessageLookupByLibrary.simpleMessage(
      "Change the app language",
    ),
    "changeThemeColor": MessageLookupByLibrary.simpleMessage(
      "Change Theme Color",
    ),
    "changeThemeColorDesc": MessageLookupByLibrary.simpleMessage(
      "Change the app theme color to your preference",
    ),
    "clearFilter": MessageLookupByLibrary.simpleMessage("Clear filter"),
    "configureWorkoutReminder": MessageLookupByLibrary.simpleMessage(
      "Configure Workout Reminder",
    ),
    "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
    "connectingToYourDevice": MessageLookupByLibrary.simpleMessage(
      "Connecting to your wearable device. Please wait...",
    ),
    "courseAdded": MessageLookupByLibrary.simpleMessage(
      "Course treatment added successfully",
    ),
    "courseDeleted": MessageLookupByLibrary.simpleMessage(
      "Course treatment deleted successfully",
    ),
    "courseDuration": MessageLookupByLibrary.simpleMessage("Course Duration"),
    "courseOfTreatment": MessageLookupByLibrary.simpleMessage(
      "Course of Treatment",
    ),
    "courseReminderBody": m11,
    "courseReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Course Treatment Reminder",
    ),
    "courseTreatment": MessageLookupByLibrary.simpleMessage("Course Treatment"),
    "courseTreatments": MessageLookupByLibrary.simpleMessage(
      "Course Treatments",
    ),
    "courseValidation": MessageLookupByLibrary.simpleMessage(
      "Please enter the course of treatment",
    ),
    "createdAt": MessageLookupByLibrary.simpleMessage("Created At"),
    "cycling": MessageLookupByLibrary.simpleMessage("Cycling"),
    "daily": MessageLookupByLibrary.simpleMessage("Daily"),
    "dashboard": MessageLookupByLibrary.simpleMessage("Dashboard"),
    "dataSyncedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Data synced successfully",
    ),
    "dateValidationMessage": MessageLookupByLibrary.simpleMessage(
      "Please select a date.",
    ),
    "defaultReminderBody": MessageLookupByLibrary.simpleMessage(
      "Time to drink water",
    ),
    "defaultReminderBodyBP": MessageLookupByLibrary.simpleMessage(
      "Your blood pressure deviated from normal range. Please recheck in 1 hour.",
    ),
    "defaultReminderTitle": MessageLookupByLibrary.simpleMessage("Drink Water"),
    "defaultReminderTitleBP": MessageLookupByLibrary.simpleMessage(
      "Recheck Blood Pressure",
    ),
    "defaultWorkoutReminderBody": m12,
    "defaultWorkoutReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Workout Reminder",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "deleteConfirmation": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to delete this workout?",
    ),
    "desiredSteps": MessageLookupByLibrary.simpleMessage("Desired Steps"),
    "diastolic": MessageLookupByLibrary.simpleMessage("Diastolic"),
    "diastolicShortAmount": m13,
    "distance": MessageLookupByLibrary.simpleMessage("Distance"),
    "distanceKm": MessageLookupByLibrary.simpleMessage("Distance (km)"),
    "dosage": MessageLookupByLibrary.simpleMessage("Dosage"),
    "dosageValidation": MessageLookupByLibrary.simpleMessage(
      "Please enter the dosage",
    ),
    "drugEntryValidation": MessageLookupByLibrary.simpleMessage(
      "Please fill in all fields correctly.",
    ),
    "drugName": MessageLookupByLibrary.simpleMessage("Drug Name"),
    "drugNameValidation": MessageLookupByLibrary.simpleMessage(
      "Please enter the drug name",
    ),
    "drugs": MessageLookupByLibrary.simpleMessage("Drugs"),
    "duration": MessageLookupByLibrary.simpleMessage("Duration"),
    "editProfile": MessageLookupByLibrary.simpleMessage("Edit Profile"),
    "editProfileDesc": MessageLookupByLibrary.simpleMessage(
      "Edit your profile information",
    ),
    "egAmount": m14,
    "egBloodSugar": m15,
    "egMorningHIIT": MessageLookupByLibrary.simpleMessage(
      ".g., morning, HIIT, recovery",
    ),
    "energyBurned": MessageLookupByLibrary.simpleMessage("Energy Burned"),
    "english": MessageLookupByLibrary.simpleMessage("English"),
    "enterAValidDistance": MessageLookupByLibrary.simpleMessage(
      "Enter a valid distance",
    ),
    "enterAnyExtraDetails": MessageLookupByLibrary.simpleMessage(
      "Enter any extra details...",
    ),
    "enterDistanceInKm": MessageLookupByLibrary.simpleMessage(
      "Enter distance in km",
    ),
    "enterValidNumber": MessageLookupByLibrary.simpleMessage(
      "Enter a valid number",
    ),
    "enterYourAge": MessageLookupByLibrary.simpleMessage("Enter your age"),
    "enterYourHeight": MessageLookupByLibrary.simpleMessage(
      "Enter your height",
    ),
    "enterYourName": MessageLookupByLibrary.simpleMessage("Enter your name"),
    "enterYourSurname": MessageLookupByLibrary.simpleMessage(
      "Enter your surname",
    ),
    "enterYourSurnameOptional": MessageLookupByLibrary.simpleMessage(
      "Enter your surname (Optional)",
    ),
    "enterYourWeight": MessageLookupByLibrary.simpleMessage(
      "Enter your weight",
    ),
    "favorite": MessageLookupByLibrary.simpleMessage("Favorite"),
    "female": MessageLookupByLibrary.simpleMessage("Female"),
    "fieldCannotBeEmpty": MessageLookupByLibrary.simpleMessage(
      "This field cannot be empty.",
    ),
    "filterByDate": MessageLookupByLibrary.simpleMessage("Filter by Date"),
    "filterByType": MessageLookupByLibrary.simpleMessage("Filter by Type"),
    "finishOnboarding": MessageLookupByLibrary.simpleMessage(
      "Finish onboarding",
    ),
    "firstThingsFirst": MessageLookupByLibrary.simpleMessage(
      "First things first!",
    ),
    "gender": MessageLookupByLibrary.simpleMessage("Gender"),
    "gymnastics": MessageLookupByLibrary.simpleMessage("Gymnastics"),
    "health": MessageLookupByLibrary.simpleMessage("Health"),
    "height": MessageLookupByLibrary.simpleMessage("Height (cm)"),
    "heightInCm": MessageLookupByLibrary.simpleMessage("Height (cm)"),
    "heightMustBeLessThan300": MessageLookupByLibrary.simpleMessage(
      "Height must be valid and less than 300 cm",
    ),
    "hideSleepSegments": MessageLookupByLibrary.simpleMessage(
      "Hide Sleep Segments",
    ),
    "hoursAndMinutesAmount": m16,
    "howDidYouFeel": MessageLookupByLibrary.simpleMessage("How did you feel?"),
    "howManyStepsYouCanWalk": MessageLookupByLibrary.simpleMessage(
      "How many steps you can walk in one day?",
    ),
    "howMuchKcalYouCanBurn": MessageLookupByLibrary.simpleMessage(
      "How much kcal you can burn in one day during idle time (so-called basal metabolic rate)?",
    ),
    "howMuchWaterYouCanDrink": MessageLookupByLibrary.simpleMessage(
      "How much water you can drink in one day?",
    ),
    "injection": MessageLookupByLibrary.simpleMessage("Injection"),
    "intensity": MessageLookupByLibrary.simpleMessage("Intensity"),
    "invalidBloodSugar": MessageLookupByLibrary.simpleMessage(
      "Invalid blood sugar value.",
    ),
    "invalidNumber": MessageLookupByLibrary.simpleMessage("Invalid number."),
    "invalidTemperature": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid temperature.",
    ),
    "letsCreateAccount": MessageLookupByLibrary.simpleMessage(
      "Let\'s create account together!",
    ),
    "letsGetToKnowEachOther": MessageLookupByLibrary.simpleMessage(
      "Let\'s get to know each other",
    ),
    "letsGetToKnowYouBetter": MessageLookupByLibrary.simpleMessage(
      "Let\'s get to know you better",
    ),
    "logInWithGoogle": MessageLookupByLibrary.simpleMessage(
      "Log in with Google",
    ),
    "loggedInAs": m17,
    "male": MessageLookupByLibrary.simpleMessage("Male"),
    "markAsFavorite": MessageLookupByLibrary.simpleMessage("Mark as Favorite"),
    "measurementAdded": MessageLookupByLibrary.simpleMessage(
      "Measurement added successfully.",
    ),
    "measurementDeleted": MessageLookupByLibrary.simpleMessage(
      "Measurement deleted",
    ),
    "medicationAdded": MessageLookupByLibrary.simpleMessage(
      "Medication added successfully",
    ),
    "medicationDeleted": MessageLookupByLibrary.simpleMessage(
      "Medication deleted successfully",
    ),
    "medicationHistory": MessageLookupByLibrary.simpleMessage(
      "Medication History",
    ),
    "medicationTime": MessageLookupByLibrary.simpleMessage("Medication Time"),
    "medicationTracking": MessageLookupByLibrary.simpleMessage(
      "Medication tracking",
    ),
    "medicationTrackingDescription": MessageLookupByLibrary.simpleMessage(
      "Keep track of your medications, dosages, and schedules.",
    ),
    "medicationType": MessageLookupByLibrary.simpleMessage("Medication Type"),
    "medicationTypeValidation": MessageLookupByLibrary.simpleMessage(
      "Please select a medication type",
    ),
    "metersShort": MessageLookupByLibrary.simpleMessage("m"),
    "milesShort": MessageLookupByLibrary.simpleMessage("mi"),
    "minutesAmount": m18,
    "minutesAmountLong": m19,
    "minutesShort": MessageLookupByLibrary.simpleMessage("min"),
    "ml": MessageLookupByLibrary.simpleMessage("ml"),
    "monthly": MessageLookupByLibrary.simpleMessage("Monthly"),
    "moodGraph": MessageLookupByLibrary.simpleMessage("Mood Graph"),
    "name": MessageLookupByLibrary.simpleMessage("Name"),
    "nameCantBeEmpty": MessageLookupByLibrary.simpleMessage(
      "Name can\'t be empty",
    ),
    "nextStep": MessageLookupByLibrary.simpleMessage("Next Step"),
    "no": MessageLookupByLibrary.simpleMessage("No"),
    "noBloodSugarMeasurements": MessageLookupByLibrary.simpleMessage(
      "No blood sugar measurements available.",
    ),
    "noCourses": MessageLookupByLibrary.simpleMessage(
      "No course treatments available.",
    ),
    "noDrugsValidation": MessageLookupByLibrary.simpleMessage(
      "Please add at least one drug.",
    ),
    "noMeasurements": MessageLookupByLibrary.simpleMessage(
      "No measurements recorded.",
    ),
    "noMedications": MessageLookupByLibrary.simpleMessage(
      "No medications found.",
    ),
    "noNotifications": MessageLookupByLibrary.simpleMessage(
      "No notifications set.",
    ),
    "noReminders": MessageLookupByLibrary.simpleMessage(
      "No workout reminders available.",
    ),
    "noSavedWorkoutsYet": MessageLookupByLibrary.simpleMessage(
      "No saved workouts yet.",
    ),
    "noSleepDataLastNight": MessageLookupByLibrary.simpleMessage(
      "No sleep data for last night.",
    ),
    "noWaterRecords": MessageLookupByLibrary.simpleMessage(
      "No water records found.",
    ),
    "notEnoughData": MessageLookupByLibrary.simpleMessage("Not enough data"),
    "noteHeightInCmAndWeightInKg": MessageLookupByLibrary.simpleMessage(
      "Note: Height in cm and Weight in kg",
    ),
    "notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "notificationAdded": MessageLookupByLibrary.simpleMessage(
      "Notification added.",
    ),
    "notificationDeleted": MessageLookupByLibrary.simpleMessage(
      "Notification deleted",
    ),
    "once": MessageLookupByLibrary.simpleMessage("Once"),
    "oopsSomethingWentWrong": MessageLookupByLibrary.simpleMessage(
      "Oops! Something went wrong.",
    ),
    "orEnterCustom": MessageLookupByLibrary.simpleMessage(
      "Or enter custom water consumption",
    ),
    "other": MessageLookupByLibrary.simpleMessage("Other"),
    "pickDuration": MessageLookupByLibrary.simpleMessage("Pick Duration"),
    "pieces": MessageLookupByLibrary.simpleMessage("pieces"),
    "pleaseEnterDistance": MessageLookupByLibrary.simpleMessage(
      "Please enter distance",
    ),
    "pleaseSelectAWorkoutType": MessageLookupByLibrary.simpleMessage(
      "Please select a workout type",
    ),
    "profile": MessageLookupByLibrary.simpleMessage("Profile"),
    "profileUpdateFailed": MessageLookupByLibrary.simpleMessage(
      "Profile update failed.",
    ),
    "profileUpdated": MessageLookupByLibrary.simpleMessage(
      "Profile updated successfully.",
    ),
    "recheckBloodPressure": MessageLookupByLibrary.simpleMessage(
      "Recheck Blood Pressure",
    ),
    "recheckBloodPressureDesc": MessageLookupByLibrary.simpleMessage(
      "Your blood pressure deviated from the normal range. Please recheck it.",
    ),
    "reminderBody": MessageLookupByLibrary.simpleMessage("Reminder Body"),
    "reminderBodyOptional": MessageLookupByLibrary.simpleMessage(
      "Reminder Body (Optional)",
    ),
    "reminderDeleted": MessageLookupByLibrary.simpleMessage(
      "Reminder deleted successfully",
    ),
    "reminderTitle": MessageLookupByLibrary.simpleMessage("Reminder Title"),
    "reminderTitleOptional": MessageLookupByLibrary.simpleMessage(
      "Reminder Title (Optional)",
    ),
    "reminderType": MessageLookupByLibrary.simpleMessage("Type"),
    "repeatInterval": MessageLookupByLibrary.simpleMessage("Repeat Interval"),
    "repeatIntervalValidation": MessageLookupByLibrary.simpleMessage(
      "Please select a repeat interval",
    ),
    "running": MessageLookupByLibrary.simpleMessage("Running"),
    "saveCourse": MessageLookupByLibrary.simpleMessage("Save course"),
    "saveMeasurement": MessageLookupByLibrary.simpleMessage("Save Measurement"),
    "saveNotification": MessageLookupByLibrary.simpleMessage(
      "Save Notification",
    ),
    "saveProfile": MessageLookupByLibrary.simpleMessage("Save Profile"),
    "saveReminder": MessageLookupByLibrary.simpleMessage("Save Reminder"),
    "saveWaterRecord": MessageLookupByLibrary.simpleMessage(
      "Save Water Record",
    ),
    "saveWorkout": MessageLookupByLibrary.simpleMessage("Save workout"),
    "savedWorkouts": MessageLookupByLibrary.simpleMessage("Saved Workouts"),
    "scheduledAt": MessageLookupByLibrary.simpleMessage("Scheduled at"),
    "scheduledTime": MessageLookupByLibrary.simpleMessage("Scheduled Time"),
    "selectCourseEnd": MessageLookupByLibrary.simpleMessage(
      "Select Course End Date",
    ),
    "selectCourseEndValidation": MessageLookupByLibrary.simpleMessage(
      "Please select the course end date.",
    ),
    "selectCourseStart": MessageLookupByLibrary.simpleMessage(
      "Select Course Start Date",
    ),
    "selectCourseStartValidation": MessageLookupByLibrary.simpleMessage(
      "Please select the course start date.",
    ),
    "selectDate": MessageLookupByLibrary.simpleMessage("Select Date"),
    "selectDateTimeValidation": MessageLookupByLibrary.simpleMessage(
      "Please select both date and time for measurement, or leave both empty.",
    ),
    "selectGender": MessageLookupByLibrary.simpleMessage("Select Gender"),
    "selectMedicationTime": MessageLookupByLibrary.simpleMessage(
      "Select Medication Time",
    ),
    "selectMedicationTimeValidation": MessageLookupByLibrary.simpleMessage(
      "Please select the medication time.",
    ),
    "selectMood": MessageLookupByLibrary.simpleMessage("Select Mood"),
    "selectMoodValidation": MessageLookupByLibrary.simpleMessage(
      "Please select a mood.",
    ),
    "selectNight": MessageLookupByLibrary.simpleMessage("Select Night"),
    "selectThemeColor": MessageLookupByLibrary.simpleMessage(
      "Select Theme Color",
    ),
    "selectTime": MessageLookupByLibrary.simpleMessage("Select Time"),
    "selectTimeValidation": MessageLookupByLibrary.simpleMessage(
      "Please select both a date and time.",
    ),
    "selectWorkoutType": MessageLookupByLibrary.simpleMessage(
      "Select Workout Type",
    ),
    "showSleepSegments": MessageLookupByLibrary.simpleMessage(
      "Show Sleep Segments",
    ),
    "sleep": MessageLookupByLibrary.simpleMessage("Sleep"),
    "sleepAnalysisDesc": MessageLookupByLibrary.simpleMessage(
      "Sleep is a body process that allows your body to rest, repair and restore itself",
    ),
    "sleepAnalysisTitle": MessageLookupByLibrary.simpleMessage(
      "Sleep Analysis",
    ),
    "sleepChartOverview": m20,
    "sleepDuration": m21,
    "sleepOverviewTitle": MessageLookupByLibrary.simpleMessage(
      "Sleep Overview",
    ),
    "sleepPeriod": m22,
    "sleepScoreAverage": MessageLookupByLibrary.simpleMessage("Average"),
    "sleepScoreBad": MessageLookupByLibrary.simpleMessage("Bad"),
    "sleepScoreEmojiAverage": MessageLookupByLibrary.simpleMessage("🙂"),
    "sleepScoreEmojiBad": MessageLookupByLibrary.simpleMessage("😞"),
    "sleepScoreEmojiExcellent": MessageLookupByLibrary.simpleMessage("😄"),
    "sleepScoreEmojiGood": MessageLookupByLibrary.simpleMessage("😊"),
    "sleepScoreEmojiPoor": MessageLookupByLibrary.simpleMessage("😐"),
    "sleepScoreEmojiVeryBad": MessageLookupByLibrary.simpleMessage("😫"),
    "sleepScoreExcellent": MessageLookupByLibrary.simpleMessage("Excellent"),
    "sleepScoreGood": MessageLookupByLibrary.simpleMessage("Good"),
    "sleepScoreInfoCalculationContent": MessageLookupByLibrary.simpleMessage(
      "Our algorithm calculates your sleep efficiency by dividing your sleep time (excluding periods when you were awake) by your total time in bed. It also compares your total sleep duration to an ideal sleep duration of 8 hours. These two factors are averaged and scaled to a 0–100 metric, resulting in your Sleep Score.",
    ),
    "sleepScoreInfoCalculationTitle": MessageLookupByLibrary.simpleMessage(
      "How is Sleep Score Calculated?",
    ),
    "sleepScoreInfoImportanceContent": MessageLookupByLibrary.simpleMessage(
      "Your Sleep Score gives you a quick insight into the quality of your sleep. A higher score suggests that you are getting restful, restorative sleep, which is crucial for your overall health, mood, and daily performance. Tracking your Sleep Score over time can help you identify patterns, adjust your habits, and take control of your well-being.",
    ),
    "sleepScoreInfoImportanceTitle": MessageLookupByLibrary.simpleMessage(
      "Why is Sleep Score Important?",
    ),
    "sleepScoreInfoTitle": MessageLookupByLibrary.simpleMessage(
      "About Sleep Score",
    ),
    "sleepScoreInfoWhatIsContent": MessageLookupByLibrary.simpleMessage(
      "Sleep Score is a metric that aggregates various aspects of your sleep, including your total sleep duration, sleep efficiency (the percentage of time you actually sleep when in bed), and the quality of your sleep stages. It is expressed as a number between 0 and 100, where higher scores indicate better sleep quality.",
    ),
    "sleepScoreInfoWhatIsTitle": MessageLookupByLibrary.simpleMessage(
      "What is Sleep Score?",
    ),
    "sleepScoreInfoYourScoreContent": m23,
    "sleepScoreInfoYourScoreTitle": MessageLookupByLibrary.simpleMessage(
      "Your Sleep Score",
    ),
    "sleepScorePoor": MessageLookupByLibrary.simpleMessage("Poor"),
    "sleepScoreTitle": MessageLookupByLibrary.simpleMessage("Sleep Score"),
    "sleepScoreVeryBad": MessageLookupByLibrary.simpleMessage("Very Bad"),
    "sleepSegmentType": m24,
    "sleepSegmentsTitle": MessageLookupByLibrary.simpleMessage(
      "Sleep Segments",
    ),
    "sleepStageAwake": MessageLookupByLibrary.simpleMessage("Awake"),
    "sleepStageAwakeInfoContent": MessageLookupByLibrary.simpleMessage(
      "The Awake Stage represents periods when you are in bed but not sleeping. Occasional brief awakenings are normal; however, extended periods of wakefulness can disrupt sleep quality.",
    ),
    "sleepStageAwakeInfoTitle": MessageLookupByLibrary.simpleMessage(
      "Awake Stage",
    ),
    "sleepStageDeep": MessageLookupByLibrary.simpleMessage("Deep"),
    "sleepStageDeepInfoContent": MessageLookupByLibrary.simpleMessage(
      "Deep Sleep is the most restorative phase of sleep, crucial for physical recovery and immune system strengthening. Adequate deep sleep is normally associated with feeling refreshed in the morning.",
    ),
    "sleepStageDeepInfoTitle": MessageLookupByLibrary.simpleMessage(
      "Deep Sleep",
    ),
    "sleepStageLengthsInfoImportanceContent": MessageLookupByLibrary.simpleMessage(
      "The lengths of each sleep stage affect how well your body and mind recover during sleep. A balanced distribution with sufficient deep and REM sleep is crucial for memory consolidation, physical recovery, and overall well-being.",
    ),
    "sleepStageLengthsInfoImportanceTitle":
        MessageLookupByLibrary.simpleMessage(
          "Why are Sleep Stage Lengths Important?",
        ),
    "sleepStageLengthsInfoInterpretationContent":
        MessageLookupByLibrary.simpleMessage(
          "Longer durations in deep and REM sleep often indicate more restorative sleep, while extended periods of being awake or in light sleep might suggest fragmented or less efficient sleep. Knowing these durations can help you understand your sleep patterns and identify areas for improvement.",
        ),
    "sleepStageLengthsInfoInterpretationTitle":
        MessageLookupByLibrary.simpleMessage(
          "How to Interpret Your Sleep Stage Durations",
        ),
    "sleepStageLengthsInfoTitle": MessageLookupByLibrary.simpleMessage(
      "About Sleep Stage Lengths",
    ),
    "sleepStageLengthsInfoWhatIsContent": MessageLookupByLibrary.simpleMessage(
      "Sleep stage lengths refer to the absolute durations you spend in each stage of sleep—such as time spent awake, in light sleep, deep sleep, and REM sleep. These values provide insights into your sleep architecture and overall sleep quality.",
    ),
    "sleepStageLengthsInfoWhatIsTitle": MessageLookupByLibrary.simpleMessage(
      "What are Sleep Stage Lengths?",
    ),
    "sleepStageLengthsInfoYourStatsContent": m25,
    "sleepStageLengthsInfoYourStatsTitle": MessageLookupByLibrary.simpleMessage(
      "Your Sleep Stage Lengths",
    ),
    "sleepStageLengthsTitle": MessageLookupByLibrary.simpleMessage(
      "Sleep Stage Lengths",
    ),
    "sleepStageLight": MessageLookupByLibrary.simpleMessage("Light"),
    "sleepStageLightInfoContent": MessageLookupByLibrary.simpleMessage(
      "Light Sleep is the transitional phase between wakefulness and deeper sleep stages. It helps your body prepare for deep sleep and is common during a healthy sleep cycle.",
    ),
    "sleepStageLightInfoTitle": MessageLookupByLibrary.simpleMessage(
      "Light Sleep",
    ),
    "sleepStageRem": MessageLookupByLibrary.simpleMessage("REM"),
    "sleepStageRemInfoContent": MessageLookupByLibrary.simpleMessage(
      "REM (Rapid Eye Movement) Sleep is when you experience most of your dreams and your brain is highly active. It is important for emotional regulation and memory consolidation.",
    ),
    "sleepStageRemInfoTitle": MessageLookupByLibrary.simpleMessage("REM Sleep"),
    "sleepStatAwake": MessageLookupByLibrary.simpleMessage("Awake"),
    "sleepStatDeep": MessageLookupByLibrary.simpleMessage("Deep Sleep"),
    "sleepStatEfficiency": MessageLookupByLibrary.simpleMessage("Efficiency"),
    "sleepStatLight": MessageLookupByLibrary.simpleMessage("Light Sleep"),
    "sleepStatRem": MessageLookupByLibrary.simpleMessage("REM Sleep"),
    "sleepStatisticsInfoEfficiencyContent": MessageLookupByLibrary.simpleMessage(
      "Sleep efficiency is the ratio of the time you actually spend asleep to the total time you spend in bed. High sleep efficiency indicates that you are getting continuous and restorative sleep.",
    ),
    "sleepStatisticsInfoEfficiencyTitle": MessageLookupByLibrary.simpleMessage(
      "Understanding Sleep Efficiency",
    ),
    "sleepStatisticsInfoStagesContent": MessageLookupByLibrary.simpleMessage(
      "Your sleep is divided into several distinct stages: Awake, Light Sleep, Deep Sleep, and REM Sleep. Each stage plays a crucial role in recovery, memory consolidation, and overall well-being.",
    ),
    "sleepStatisticsInfoStagesTitle": MessageLookupByLibrary.simpleMessage(
      "Sleep Stages Breakdown",
    ),
    "sleepStatisticsInfoTitle": MessageLookupByLibrary.simpleMessage(
      "About Sleep Statistics",
    ),
    "sleepStatisticsInfoWhatIsContent": MessageLookupByLibrary.simpleMessage(
      "Sleep statistics are quantitative measures that provide insight into your sleep quality and architecture. They include metrics such as sleep efficiency, as well as the percentage of time spent in various sleep stages like light, deep, and REM sleep.",
    ),
    "sleepStatisticsInfoWhatIsTitle": MessageLookupByLibrary.simpleMessage(
      "What are Sleep Statistics?",
    ),
    "sleepStatisticsInfoYourStatsContent": m26,
    "sleepStatisticsInfoYourStatsTitle": MessageLookupByLibrary.simpleMessage(
      "Your Sleep Statistics",
    ),
    "sleepStatisticsTitle": MessageLookupByLibrary.simpleMessage(
      "Sleep Statistics",
    ),
    "steps": MessageLookupByLibrary.simpleMessage("Steps"),
    "stepsTip": MessageLookupByLibrary.simpleMessage(
      "Tip: Regular walking can boost your cardiovascular health, clear your mind, and increase your overall energy-small steps can make a big difference!",
    ),
    "stress": MessageLookupByLibrary.simpleMessage("Stress"),
    "stressAndMoodPoints": m27,
    "stressAndMoodTracking": MessageLookupByLibrary.simpleMessage(
      "Stress and Mood Tracking",
    ),
    "stressAndMoodTrackingDesc": MessageLookupByLibrary.simpleMessage(
      "Mood is the way someone feels due to a variety of thought, reactions or emotions over a long period of time",
    ),
    "stressGraph": MessageLookupByLibrary.simpleMessage("Stress Graph"),
    "surname": MessageLookupByLibrary.simpleMessage("Surname"),
    "swimming": MessageLookupByLibrary.simpleMessage("Swimming"),
    "syncData": MessageLookupByLibrary.simpleMessage("Sync data to the cloud"),
    "syncDataDecs": MessageLookupByLibrary.simpleMessage(
      "Your data will be synced to the cloud for backup and recovery.",
    ),
    "syrup": MessageLookupByLibrary.simpleMessage("Syrup"),
    "systolic": MessageLookupByLibrary.simpleMessage("Systolic"),
    "systolicAndDiastolic": m28,
    "systolicShortAmount": m29,
    "tablet": MessageLookupByLibrary.simpleMessage("Tablet"),
    "tags": MessageLookupByLibrary.simpleMessage("Tags"),
    "tagsCommaSeparated": MessageLookupByLibrary.simpleMessage(
      "Tags (comma separated)",
    ),
    "temperature": MessageLookupByLibrary.simpleMessage("Temperature"),
    "temperatureMeasurement": MessageLookupByLibrary.simpleMessage(
      "Temperature measurement",
    ),
    "temperatureMeasurementDescription": MessageLookupByLibrary.simpleMessage(
      "Temperature is the measurement of the hotness and coldness of a body",
    ),
    "temperatureReminders": MessageLookupByLibrary.simpleMessage(
      "Temperature Reminders",
    ),
    "temperatureTracking": MessageLookupByLibrary.simpleMessage(
      "Temperature Tracking",
    ),
    "tennis": MessageLookupByLibrary.simpleMessage("Tennis"),
    "theresNotEnoughDataToBuildTheChart": MessageLookupByLibrary.simpleMessage(
      "There\'s not enough data to build the chart",
    ),
    "thisProcessMayTakeAFewSeconds": MessageLookupByLibrary.simpleMessage(
      "This process may take a few seconds.",
    ),
    "timeValidationMessage": MessageLookupByLibrary.simpleMessage(
      "Please select a time.",
    ),
    "totalSleepExcluding": m30,
    "totalSleepIncluding": m31,
    "trainingEvaluation": MessageLookupByLibrary.simpleMessage(
      "Training evaluation",
    ),
    "ukrainian": MessageLookupByLibrary.simpleMessage("Ukrainian"),
    "units": MessageLookupByLibrary.simpleMessage("units"),
    "unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
    "walking": MessageLookupByLibrary.simpleMessage("Walking"),
    "waterAmount": MessageLookupByLibrary.simpleMessage("Water Amount"),
    "waterAmountValidation": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid water amount",
    ),
    "waterConsumption": MessageLookupByLibrary.simpleMessage(
      "Water Consumption (ml)",
    ),
    "waterRecordAdded": MessageLookupByLibrary.simpleMessage(
      "Water record added successfully",
    ),
    "waterRecordDeleted": MessageLookupByLibrary.simpleMessage(
      "Water record deleted successfully",
    ),
    "waterReminders": MessageLookupByLibrary.simpleMessage("Water Reminders"),
    "waterTip": MessageLookupByLibrary.simpleMessage(
      "Tip: Drinking water is important for your health. It helps you to stay hydrated and maintain your body temperature",
    ),
    "waterTracking": MessageLookupByLibrary.simpleMessage("Water Tracking"),
    "waterTrackingDescription": MessageLookupByLibrary.simpleMessage(
      "Water is essential to maintain blood volume and regulate body temperature",
    ),
    "weekly": MessageLookupByLibrary.simpleMessage("Weekly"),
    "weight": MessageLookupByLibrary.simpleMessage("Weight (kg)"),
    "weightInKg": MessageLookupByLibrary.simpleMessage("Weight (kg)"),
    "weightMustBeLessThan500": MessageLookupByLibrary.simpleMessage(
      "Weight must be valid and less than 500 kg",
    ),
    "weightTraining": MessageLookupByLibrary.simpleMessage("Weight Training"),
    "workoutDetails": MessageLookupByLibrary.simpleMessage("Workout Details"),
    "workoutReminderScheduled": MessageLookupByLibrary.simpleMessage(
      "Workout reminder scheduled successfully!",
    ),
    "workoutSaved": MessageLookupByLibrary.simpleMessage("Workout saved"),
    "workoutType": MessageLookupByLibrary.simpleMessage("Workout Type"),
    "workoutTypeValidationMessage": MessageLookupByLibrary.simpleMessage(
      "Please select a workout type.",
    ),
    "workoutsAmount": MessageLookupByLibrary.simpleMessage("Workouts amount"),
    "yes": MessageLookupByLibrary.simpleMessage("Yes"),
    "youCanNowProceedToTheNextStep": MessageLookupByLibrary.simpleMessage(
      "You can now proceed to the next step.",
    ),
    "yourActivities": MessageLookupByLibrary.simpleMessage("Your activities"),
    "yourReminders": MessageLookupByLibrary.simpleMessage("Your Reminders"),
    "yourWearableDeviceIsConnected": MessageLookupByLibrary.simpleMessage(
      "Your wearable device is connected.",
    ),
  };
}

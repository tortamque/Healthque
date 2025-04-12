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

  static String m9(bmr) =>
      "Tip: We calculated it for you (${bmr} calories/day). You can change it if you know your body better.";

  static String m10(drugs) => "Time to take your medications: ${drugs}";

  static String m11(type) => "Don\'t forget your ${type} workout today!";

  static String m12(amount) => "Dias. ${amount} mmHg";

  static String m13(amount) => "e.g. ${amount}";

  static String m14(hours, minutes) => "${hours} h ${minutes} m";

  static String m15(user) => "Successfully logged in as ${user}";

  static String m16(minutes) => "${minutes} m";

  static String m17(minutes) => "${minutes} minutes";

  static String m18(hours, minutes) => "${hours}h ${minutes}m";

  static String m19(stress, mood) => "Stress: ${stress} points\nMood: ${mood}";

  static String m20(sys, diastolic) =>
      "Systolic: ${sys} mmHg, Diastolic: ${diastolic} mmHg";

  static String m21(amount) => "Sys. ${amount} mmHg";

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
    "bmrTip": m9,
    "bouldering": MessageLookupByLibrary.simpleMessage("Bouldering"),
    "calculateBmrUsingFormula": MessageLookupByLibrary.simpleMessage(
      "Calculate BMR using formula",
    ),
    "caloriesBurnedDuringWorkouts": MessageLookupByLibrary.simpleMessage(
      "Calories burned during workouts",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "capsule": MessageLookupByLibrary.simpleMessage("Capsule"),
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
    "courseReminderBody": m10,
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
    "defaultWorkoutReminderBody": m11,
    "defaultWorkoutReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Workout Reminder",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "deleteConfirmation": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to delete this workout?",
    ),
    "diastolic": MessageLookupByLibrary.simpleMessage("Diastolic"),
    "diastolicShortAmount": m12,
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
    "egAmount": m13,
    "egMorningHIIT": MessageLookupByLibrary.simpleMessage(
      ".g., morning, HIIT, recovery",
    ),
    "energyBurned": MessageLookupByLibrary.simpleMessage("Energy Burned"),
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
    "gymnastics": MessageLookupByLibrary.simpleMessage("Gymnastics"),
    "health": MessageLookupByLibrary.simpleMessage("Health"),
    "heightInCm": MessageLookupByLibrary.simpleMessage("Height (cm)"),
    "heightMustBeLessThan300": MessageLookupByLibrary.simpleMessage(
      "Height must be valid and less than 300 cm",
    ),
    "hoursAndMinutesAmount": m14,
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
    "invalidNumber": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid number.",
    ),
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
    "loggedInAs": m15,
    "male": MessageLookupByLibrary.simpleMessage("Male"),
    "markAsFavorite": MessageLookupByLibrary.simpleMessage("Mark as Favorite"),
    "measurementAdded": MessageLookupByLibrary.simpleMessage(
      "Measurement added.",
    ),
    "measurementDeleted": MessageLookupByLibrary.simpleMessage(
      "Measurement deleted.",
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
    "minutesAmount": m16,
    "minutesAmountLong": m17,
    "ml": MessageLookupByLibrary.simpleMessage("ml"),
    "monthly": MessageLookupByLibrary.simpleMessage("Monthly"),
    "moodGraph": MessageLookupByLibrary.simpleMessage("Mood Graph"),
    "name": MessageLookupByLibrary.simpleMessage("Name"),
    "nameCantBeEmpty": MessageLookupByLibrary.simpleMessage(
      "Name can\'t be empty",
    ),
    "nextStep": MessageLookupByLibrary.simpleMessage("Next Step"),
    "no": MessageLookupByLibrary.simpleMessage("No"),
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
    "noWaterRecords": MessageLookupByLibrary.simpleMessage(
      "No water records found.",
    ),
    "notEnoughData": MessageLookupByLibrary.simpleMessage(
      "Not enough data for graph.",
    ),
    "noteHeightInCmAndWeightInKg": MessageLookupByLibrary.simpleMessage(
      "Note: Height in cm and Weight in kg",
    ),
    "notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "notificationAdded": MessageLookupByLibrary.simpleMessage(
      "Notification added.",
    ),
    "notificationDeleted": MessageLookupByLibrary.simpleMessage(
      "Notification deleted.",
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
    "selectThemeColor": MessageLookupByLibrary.simpleMessage(
      "Select Theme Color",
    ),
    "selectTime": MessageLookupByLibrary.simpleMessage("Select Time"),
    "selectTimeValidation": MessageLookupByLibrary.simpleMessage(
      "Please select a time for the reminder.",
    ),
    "selectWorkoutType": MessageLookupByLibrary.simpleMessage(
      "Select Workout Type",
    ),
    "sleep": MessageLookupByLibrary.simpleMessage("Sleep"),
    "sleepDuration": m18,
    "steps": MessageLookupByLibrary.simpleMessage("Steps"),
    "stepsTip": MessageLookupByLibrary.simpleMessage(
      "Tip: Regular walking can boost your cardiovascular health, clear your mind, and increase your overall energy-small steps can make a big difference!",
    ),
    "stress": MessageLookupByLibrary.simpleMessage("Stress"),
    "stressAndMoodPoints": m19,
    "stressAndMoodTracking": MessageLookupByLibrary.simpleMessage(
      "Stress & Mood Tracking",
    ),
    "stressGraph": MessageLookupByLibrary.simpleMessage("Stress Graph"),
    "surname": MessageLookupByLibrary.simpleMessage("Surname"),
    "swimming": MessageLookupByLibrary.simpleMessage("Swimming"),
    "syrup": MessageLookupByLibrary.simpleMessage("Syrup"),
    "systolic": MessageLookupByLibrary.simpleMessage("Systolic"),
    "systolicAndDiastolic": m20,
    "systolicShortAmount": m21,
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
    "trainingEvaluation": MessageLookupByLibrary.simpleMessage(
      "Training evaluation",
    ),
    "units": MessageLookupByLibrary.simpleMessage("units"),
    "walking": MessageLookupByLibrary.simpleMessage("Walking"),
    "waterAmount": MessageLookupByLibrary.simpleMessage("Water Amount"),
    "waterAmountValidation": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid water amount",
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

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

  static String m1(amount) => "${amount}m";

  static String m2(ammount) => "${ammount}%";

  static String m3(amount) => "${amount} steps";

  static String m4(amount) => "${amount} workouts";

  static String m5(amount) => "${amount} kcal";

  static String m6(bmr) =>
      "Tip: We calculated it for you (${bmr} calories/day). You can change it if you know your body better.";

  static String m7(type) => "Don\'t forget your ${type} workout today!";

  static String m8(hours, minutes) => "${hours} h ${minutes} m";

  static String m9(user) => "Successfully logged in as ${user}";

  static String m10(minutes) => "${minutes} m";

  static String m11(minutes) => "${minutes} minutes";

  static String m12(hours, minutes) => "${hours}h ${minutes}m";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "activity": MessageLookupByLibrary.simpleMessage("Activity"),
    "activityAnalysisText": MessageLookupByLibrary.simpleMessage(
      "Activity analysis",
    ),
    "addANewWorkout": MessageLookupByLibrary.simpleMessage("Add a new workout"),
    "addMedication": MessageLookupByLibrary.simpleMessage("Add Medication"),
    "addMedicationButton": MessageLookupByLibrary.simpleMessage(
      "Add Medication",
    ),
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
    "amountM": m1,
    "amountOfEachWorkoutType": MessageLookupByLibrary.simpleMessage(
      "Amount of each workout type",
    ),
    "amountPercentage": m2,
    "amountSteps": m3,
    "amountWorkouts": m4,
    "amoutKcal": m5,
    "applyFilter": MessageLookupByLibrary.simpleMessage("Apply Filter"),
    "bloodOxygenSaturation": MessageLookupByLibrary.simpleMessage(
      "Blood oxygen saturation",
    ),
    "bmrTip": m6,
    "bouldering": MessageLookupByLibrary.simpleMessage("Bouldering"),
    "calculateBmrUsingFormula": MessageLookupByLibrary.simpleMessage(
      "Calculate BMR using formula",
    ),
    "caloriesBurnedDuringWorkouts": MessageLookupByLibrary.simpleMessage(
      "Calories burned during workouts",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "capsule": MessageLookupByLibrary.simpleMessage("Capsule"),
    "clearFilter": MessageLookupByLibrary.simpleMessage("Clear Filter"),
    "configureWorkoutReminder": MessageLookupByLibrary.simpleMessage(
      "Configure Workout Reminder",
    ),
    "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
    "connectingToYourDevice": MessageLookupByLibrary.simpleMessage(
      "Connecting to your wearable device. Please wait...",
    ),
    "courseOfTreatment": MessageLookupByLibrary.simpleMessage(
      "Course of Treatment",
    ),
    "courseValidation": MessageLookupByLibrary.simpleMessage(
      "Please enter the course of treatment",
    ),
    "createdAt": MessageLookupByLibrary.simpleMessage("Created At"),
    "cycling": MessageLookupByLibrary.simpleMessage("Cycling"),
    "dashboard": MessageLookupByLibrary.simpleMessage("Dashboard"),
    "dateValidationMessage": MessageLookupByLibrary.simpleMessage(
      "Please select a date.",
    ),
    "defaultWorkoutReminderBody": m7,
    "defaultWorkoutReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Workout Reminder",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "deleteConfirmation": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to delete this workout?",
    ),
    "distance": MessageLookupByLibrary.simpleMessage("Distance"),
    "distanceKm": MessageLookupByLibrary.simpleMessage("Distance (km)"),
    "dosage": MessageLookupByLibrary.simpleMessage("Dosage"),
    "dosageValidation": MessageLookupByLibrary.simpleMessage(
      "Please enter the dosage",
    ),
    "duration": MessageLookupByLibrary.simpleMessage("Duration"),
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
    "hoursAndMinutesAmount": m8,
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
    "loggedInAs": m9,
    "male": MessageLookupByLibrary.simpleMessage("Male"),
    "markAsFavorite": MessageLookupByLibrary.simpleMessage("Mark as Favorite"),
    "medicationAdded": MessageLookupByLibrary.simpleMessage(
      "Medication added successfully",
    ),
    "medicationDeleted": MessageLookupByLibrary.simpleMessage(
      "Medication deleted successfully",
    ),
    "medicationHistory": MessageLookupByLibrary.simpleMessage(
      "Medication History",
    ),
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
    "minutesAmount": m10,
    "minutesAmountLong": m11,
    "ml": MessageLookupByLibrary.simpleMessage("ml"),
    "name": MessageLookupByLibrary.simpleMessage("Name"),
    "nameCantBeEmpty": MessageLookupByLibrary.simpleMessage(
      "Name can\'t be empty",
    ),
    "nextStep": MessageLookupByLibrary.simpleMessage("Next Step"),
    "no": MessageLookupByLibrary.simpleMessage("No"),
    "noMedications": MessageLookupByLibrary.simpleMessage(
      "No medications found.",
    ),
    "noReminders": MessageLookupByLibrary.simpleMessage(
      "No workout reminders available.",
    ),
    "noSavedWorkoutsYet": MessageLookupByLibrary.simpleMessage(
      "No saved workouts yet.",
    ),
    "noteHeightInCmAndWeightInKg": MessageLookupByLibrary.simpleMessage(
      "Note: Height in cm and Weight in kg",
    ),
    "notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "oopsSomethingWentWrong": MessageLookupByLibrary.simpleMessage(
      "Oops! Something went wrong.",
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
    "reminderBodyOptional": MessageLookupByLibrary.simpleMessage(
      "Reminder Body (Optional)",
    ),
    "reminderDeleted": MessageLookupByLibrary.simpleMessage(
      "Reminder deleted successfully",
    ),
    "reminderTitleOptional": MessageLookupByLibrary.simpleMessage(
      "Reminder Title (Optional)",
    ),
    "reminderType": MessageLookupByLibrary.simpleMessage("Type"),
    "running": MessageLookupByLibrary.simpleMessage("Running"),
    "saveReminder": MessageLookupByLibrary.simpleMessage("Save Reminder"),
    "saveWorkout": MessageLookupByLibrary.simpleMessage("Save workout"),
    "savedWorkouts": MessageLookupByLibrary.simpleMessage("Saved Workouts"),
    "scheduledAt": MessageLookupByLibrary.simpleMessage("Scheduled at"),
    "selectDate": MessageLookupByLibrary.simpleMessage("Select Date"),
    "selectGender": MessageLookupByLibrary.simpleMessage("Select Gender"),
    "selectTime": MessageLookupByLibrary.simpleMessage("Select Time"),
    "selectWorkoutType": MessageLookupByLibrary.simpleMessage(
      "Select Workout Type",
    ),
    "sleep": MessageLookupByLibrary.simpleMessage("Sleep"),
    "sleepDuration": m12,
    "steps": MessageLookupByLibrary.simpleMessage("Steps"),
    "stepsTip": MessageLookupByLibrary.simpleMessage(
      "Tip: Regular walking can boost your cardiovascular health, clear your mind, and increase your overall energy-small steps can make a big difference!",
    ),
    "surname": MessageLookupByLibrary.simpleMessage("Surname"),
    "swimming": MessageLookupByLibrary.simpleMessage("Swimming"),
    "syrup": MessageLookupByLibrary.simpleMessage("Syrup"),
    "tablet": MessageLookupByLibrary.simpleMessage("Tablet"),
    "tags": MessageLookupByLibrary.simpleMessage("Tags"),
    "tagsCommaSeparated": MessageLookupByLibrary.simpleMessage(
      "Tags (comma separated)",
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
    "waterTip": MessageLookupByLibrary.simpleMessage(
      "Tip: Drinking water is important for your health. It helps you to stay hydrated and maintain your body temperature",
    ),
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

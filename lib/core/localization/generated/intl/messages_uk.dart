// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a uk locale. All the
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
  String get localeName => 'uk';

  static String m0(amount) => "${amount} км";

  static String m1(amount) => "${amount} л";

  static String m2(amount) => "${amount} м";

  static String m3(amount) => "${amount} мл";

  static String m4(amount) => "${amount} (мл)";

  static String m5(ammount) => "${ammount}%";

  static String m6(amount) => "${amount} кроки";

  static String m7(amount) => "${amount} тренування";

  static String m8(amount) => "${amount} ккал";

  static String m9(error) => "Виникла помилка: ${error}";

  static String m10(bmr) =>
      "Порада: ми розрахували це для вас (${bmr} калорій/день). Ви можете змінити, якщо краще знаєте своє тіло.";

  static String m11(drugs) => "Час прийняти ваші медикаменти: ${drugs}";

  static String m12(type) =>
      "Не забудьте про своє ${type} тренування сьогодні!";

  static String m13(amount) => "Діаст. ${amount} мм рт. ст.";

  static String m14(amount) => "наприклад, ${amount}";

  static String m15(amount) => "наприклад, ${amount} мг/дл";

  static String m16(hours, minutes) => "${hours} г ${minutes} хв";

  static String m17(user) => "Успішно увійшли як ${user}";

  static String m18(minutes) => "${minutes} хв";

  static String m19(minutes) => "${minutes} хвилин";

  static String m20(h, m) => "Загальний сон: ${h} г ${m} хв";

  static String m21(hours, minutes) => "${hours}г ${minutes}хв";

  static String m22(start, end) => "Період сну: ${start} - ${end}";

  static String m23(score, label) =>
      "За нашими аналізами, ваша оцінка сну становить ${score} (${label}). Ця оцінка відображає ефективність вашого сну та загальну тривалість. Використовуйте цю інформацію як орієнтир для покращення звичок сну та загального здоров\'я.";

  static String m24(type) => "${type}";

  static String m25(awake, deep, rem, light) =>
      "За нашими аналізами, час пробудження становить ${awake}, глибокий сон — ${deep}, REM-сон — ${rem}, а легкий сон — ${light}. Ці показники допомагають вам зрозуміти розподіл сну та скоригувати звички для кращого відпочинку.";

  static String m26(efficiency, awake, deep, rem, light) =>
      "За нашими аналізами, ваша ефективність сну становить ${efficiency}%. Час пробудження — ${awake}%, глибокий сон — ${deep}%, REM-сон — ${rem}%, а легкий сон — ${light}%. Ці значення допомагають зрозуміти якість сну та визначити області для покращення.";

  static String m27(stress, mood) => "Стрес: ${stress} балів\nНастрій: ${mood}";

  static String m28(sys, diastolic) =>
      "Систолічний: ${sys} мм рт. ст., Діастолічний: ${diastolic} мм рт. ст.";

  static String m29(amount) => "Сист. ${amount} мм рт. ст.";

  static String m30(time) => "Загальний сон (без часу пробудження): ${time}";

  static String m31(time) =>
      "Загальний сон (включаючи час пробудження): ${time}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "activity": MessageLookupByLibrary.simpleMessage("Активність"),
    "activityAnalysisText": MessageLookupByLibrary.simpleMessage(
      "Аналіз активності",
    ),
    "add": MessageLookupByLibrary.simpleMessage("Додати"),
    "addANewWorkout": MessageLookupByLibrary.simpleMessage(
      "Додати нове тренування",
    ),
    "addBloodPressureMeasurement": MessageLookupByLibrary.simpleMessage(
      "Додати вимірювання кров\'яного тиску",
    ),
    "addCourse": MessageLookupByLibrary.simpleMessage("Додати курс"),
    "addDrug": MessageLookupByLibrary.simpleMessage("Додати препарат"),
    "addDrugs": MessageLookupByLibrary.simpleMessage("Додати ліки"),
    "addMeasurement": MessageLookupByLibrary.simpleMessage(
      "Додати вимірювання",
    ),
    "addMedication": MessageLookupByLibrary.simpleMessage("Додати медикамент"),
    "addMedicationButton": MessageLookupByLibrary.simpleMessage(
      "Додати медикамент",
    ),
    "addNotification": MessageLookupByLibrary.simpleMessage(
      "Додати сповіщення",
    ),
    "addStressAndMoodMeasurement": MessageLookupByLibrary.simpleMessage(
      "Додати вимірювання стресу та настрою",
    ),
    "addWaterRecord": MessageLookupByLibrary.simpleMessage(
      "Додати запис про воду",
    ),
    "addWorkout": MessageLookupByLibrary.simpleMessage("Додати тренування"),
    "addedOn": MessageLookupByLibrary.simpleMessage("Додано"),
    "additionalNotes": MessageLookupByLibrary.simpleMessage(
      "Додаткові нотатки",
    ),
    "age": MessageLookupByLibrary.simpleMessage("Вік"),
    "ageMustBeLessThan120": MessageLookupByLibrary.simpleMessage(
      "Вік має бути дійсним і меншим за 120",
    ),
    "all": MessageLookupByLibrary.simpleMessage("Всі"),
    "allYourActivitiesText": MessageLookupByLibrary.simpleMessage(
      "Всі ваші активності",
    ),
    "amountKm": m0,
    "amountL": m1,
    "amountM": m2,
    "amountMl": m3,
    "amountMlInBraces": m4,
    "amountOfEachWorkoutType": MessageLookupByLibrary.simpleMessage(
      "Кількість кожного типу тренувань",
    ),
    "amountPercentage": m5,
    "amountSteps": m6,
    "amountWorkouts": m7,
    "amoutKcal": m8,
    "anErrorOccurred": m9,
    "applyFilter": MessageLookupByLibrary.simpleMessage("Застосувати фільтр"),
    "bloodOxygenSaturation": MessageLookupByLibrary.simpleMessage(
      "Насичення крові киснем",
    ),
    "bloodPressureReminders": MessageLookupByLibrary.simpleMessage(
      "Нагадування про кров\'яний тиск",
    ),
    "bloodPressureTracking": MessageLookupByLibrary.simpleMessage(
      "Відстеження кров\'яного тиску",
    ),
    "bloodPressureTrackingDescription": MessageLookupByLibrary.simpleMessage(
      "Кров\'яний тиск – це сила, з якою кров протікає через ваші артерії",
    ),
    "bloodSugar": MessageLookupByLibrary.simpleMessage("Рівень цукру"),
    "bloodSugarReminderInfo": MessageLookupByLibrary.simpleMessage(
      "Встановіть нагадування, щоб перевірити рівень цукру в крові.",
    ),
    "bloodSugarReminders": MessageLookupByLibrary.simpleMessage(
      "Нагадування про рівень цукру",
    ),
    "bloodSugarTracking": MessageLookupByLibrary.simpleMessage(
      "Відстеження рівня цукру в крові",
    ),
    "bloodSugarTrackingDesc": MessageLookupByLibrary.simpleMessage(
      "Глюкоза в крові є основним типом цукру, що знаходиться в крові",
    ),
    "bmrTip": m10,
    "bouldering": MessageLookupByLibrary.simpleMessage("Болдерінг"),
    "calculateBmrUsingFormula": MessageLookupByLibrary.simpleMessage(
      "Обчислити базальний метаболізм за формулою",
    ),
    "caloriesBurnInOneDay": MessageLookupByLibrary.simpleMessage(
      "Спалені калорії за один день",
    ),
    "caloriesBurnedDuringWorkouts": MessageLookupByLibrary.simpleMessage(
      "Спалені калорії під час тренувань",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Скасувати"),
    "capsule": MessageLookupByLibrary.simpleMessage("Капсула"),
    "changeLanguage": MessageLookupByLibrary.simpleMessage("Змінити мову"),
    "changeLanguageDesc": MessageLookupByLibrary.simpleMessage(
      "Змінити мову додатку",
    ),
    "changeThemeColor": MessageLookupByLibrary.simpleMessage(
      "Змінити колір теми",
    ),
    "changeThemeColorDesc": MessageLookupByLibrary.simpleMessage(
      "Змініть колір теми додатка згідно з вашими вподобаннями",
    ),
    "clearFilter": MessageLookupByLibrary.simpleMessage("Очистити фільтр"),
    "configureWorkoutReminder": MessageLookupByLibrary.simpleMessage(
      "Налаштувати нагадування про тренування",
    ),
    "confirm": MessageLookupByLibrary.simpleMessage("Підтвердити"),
    "connectingToYourDevice": MessageLookupByLibrary.simpleMessage(
      "Підключення до вашого носимого пристрою. Будь ласка, зачекайте...",
    ),
    "courseAdded": MessageLookupByLibrary.simpleMessage(
      "Курс лікування успішно додано",
    ),
    "courseDeleted": MessageLookupByLibrary.simpleMessage(
      "Курс лікування успішно видалено",
    ),
    "courseDuration": MessageLookupByLibrary.simpleMessage("Тривалість курсу"),
    "courseOfTreatment": MessageLookupByLibrary.simpleMessage("Курс лікування"),
    "courseReminderBody": m11,
    "courseReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Нагадування про курс лікування",
    ),
    "courseTreatment": MessageLookupByLibrary.simpleMessage("Курс лікування"),
    "courseTreatments": MessageLookupByLibrary.simpleMessage("Курс лікування"),
    "courseValidation": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, введіть курс лікування",
    ),
    "createdAt": MessageLookupByLibrary.simpleMessage("Створено"),
    "cycling": MessageLookupByLibrary.simpleMessage("Велоспорт"),
    "daily": MessageLookupByLibrary.simpleMessage("Щодня"),
    "dashboard": MessageLookupByLibrary.simpleMessage("Панель"),
    "dataSyncedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Дані успішно синхронізовано",
    ),
    "dateValidationMessage": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, виберіть дату.",
    ),
    "defaultReminderBody": MessageLookupByLibrary.simpleMessage(
      "Час пити воду",
    ),
    "defaultReminderBodyBP": MessageLookupByLibrary.simpleMessage(
      "Ваш кров\'яний тиск відхилився від нормального діапазону. Будь ласка, перевірте його через 1 годину.",
    ),
    "defaultReminderTitle": MessageLookupByLibrary.simpleMessage("Пийте воду"),
    "defaultReminderTitleBP": MessageLookupByLibrary.simpleMessage(
      "Перевірте кров\'яний тиск",
    ),
    "defaultWorkoutReminderBody": m12,
    "defaultWorkoutReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Нагадування про тренування",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Видалити"),
    "deleteConfirmation": MessageLookupByLibrary.simpleMessage(
      "Ви впевнені, що хочете видалити це тренування?",
    ),
    "desiredSteps": MessageLookupByLibrary.simpleMessage(
      "Бажана кількість кроків",
    ),
    "diastolic": MessageLookupByLibrary.simpleMessage("Діастолічний"),
    "diastolicShortAmount": m13,
    "distance": MessageLookupByLibrary.simpleMessage("Відстань"),
    "distanceKm": MessageLookupByLibrary.simpleMessage("Відстань (км)"),
    "dosage": MessageLookupByLibrary.simpleMessage("Доза"),
    "dosageValidation": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, введіть дозу",
    ),
    "drugEntryValidation": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, заповніть усі поля правильно.",
    ),
    "drugName": MessageLookupByLibrary.simpleMessage("Назва препарату"),
    "drugNameValidation": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, введіть назву препарату",
    ),
    "drugs": MessageLookupByLibrary.simpleMessage("Препарати"),
    "duration": MessageLookupByLibrary.simpleMessage("Тривалість"),
    "editProfile": MessageLookupByLibrary.simpleMessage("Редагувати профіль"),
    "editProfileDesc": MessageLookupByLibrary.simpleMessage(
      "Редагувати інформацію вашого профілю",
    ),
    "egAmount": m14,
    "egBloodSugar": m15,
    "egMorningHIIT": MessageLookupByLibrary.simpleMessage(
      "н-р, ранок, HIIT, відновлення",
    ),
    "energyBurned": MessageLookupByLibrary.simpleMessage("Витрачена енергія"),
    "english": MessageLookupByLibrary.simpleMessage("Англійська"),
    "enterAValidDistance": MessageLookupByLibrary.simpleMessage(
      "Введіть дійсну відстань",
    ),
    "enterAnyExtraDetails": MessageLookupByLibrary.simpleMessage(
      "Введіть будь-які додаткові деталі...",
    ),
    "enterDistanceInKm": MessageLookupByLibrary.simpleMessage(
      "Введіть відстань в км",
    ),
    "enterValidNumber": MessageLookupByLibrary.simpleMessage(
      "Введіть дійсне число",
    ),
    "enterYourAge": MessageLookupByLibrary.simpleMessage("Введіть свій вік"),
    "enterYourHeight": MessageLookupByLibrary.simpleMessage(
      "Введіть свій зріст",
    ),
    "enterYourName": MessageLookupByLibrary.simpleMessage("Введіть своє ім\'я"),
    "enterYourSurname": MessageLookupByLibrary.simpleMessage(
      "Введіть своє прізвище",
    ),
    "enterYourSurnameOptional": MessageLookupByLibrary.simpleMessage(
      "Введіть своє прізвище (необов\'язково)",
    ),
    "enterYourWeight": MessageLookupByLibrary.simpleMessage(
      "Введіть свою вагу",
    ),
    "favorite": MessageLookupByLibrary.simpleMessage("Улюблене"),
    "female": MessageLookupByLibrary.simpleMessage("Жінка"),
    "fieldCannotBeEmpty": MessageLookupByLibrary.simpleMessage(
      "Це поле не може бути порожнім.",
    ),
    "filterByDate": MessageLookupByLibrary.simpleMessage("Фільтр за датою"),
    "filterByType": MessageLookupByLibrary.simpleMessage("Фільтр за типом"),
    "finishOnboarding": MessageLookupByLibrary.simpleMessage(
      "Завершити ознайомлення",
    ),
    "firstThingsFirst": MessageLookupByLibrary.simpleMessage("Перш за все!"),
    "gender": MessageLookupByLibrary.simpleMessage("Стать"),
    "gymnastics": MessageLookupByLibrary.simpleMessage("Гімнастика"),
    "health": MessageLookupByLibrary.simpleMessage("Здоров\'я"),
    "height": MessageLookupByLibrary.simpleMessage("Зріст (см)"),
    "heightInCm": MessageLookupByLibrary.simpleMessage("Зріст (см)"),
    "heightMustBeLessThan300": MessageLookupByLibrary.simpleMessage(
      "Зріст має бути дійсним і меншим за 300 см",
    ),
    "hideSleepSegments": MessageLookupByLibrary.simpleMessage(
      "Приховати сегменти сну",
    ),
    "hoursAndMinutesAmount": m16,
    "howDidYouFeel": MessageLookupByLibrary.simpleMessage("Як ви почувалися?"),
    "howManyStepsYouCanWalk": MessageLookupByLibrary.simpleMessage(
      "Скільки кроків ви можете пройти за один день?",
    ),
    "howMuchKcalYouCanBurn": MessageLookupByLibrary.simpleMessage(
      "Скільки ккал ви можете спалити за один день під час відпочинку (базальний метаболізм)?",
    ),
    "howMuchWaterYouCanDrink": MessageLookupByLibrary.simpleMessage(
      "Скільки води ви можете випити за один день?",
    ),
    "injection": MessageLookupByLibrary.simpleMessage("Ін\'єкція"),
    "intensity": MessageLookupByLibrary.simpleMessage("Інтенсивність"),
    "invalidBloodSugar": MessageLookupByLibrary.simpleMessage(
      "Недійсне значення рівня цукру в крові.",
    ),
    "invalidNumber": MessageLookupByLibrary.simpleMessage("Недійсне число."),
    "invalidTemperature": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, введіть дійсну температуру.",
    ),
    "letsCreateAccount": MessageLookupByLibrary.simpleMessage(
      "Давайте створимо обліковий запис разом!",
    ),
    "letsGetToKnowEachOther": MessageLookupByLibrary.simpleMessage(
      "Давайте познайомимося ближче",
    ),
    "letsGetToKnowYouBetter": MessageLookupByLibrary.simpleMessage(
      "Давайте більше про вас дізнаємося",
    ),
    "logInWithGoogle": MessageLookupByLibrary.simpleMessage(
      "Увійдіть через Google",
    ),
    "loggedInAs": m17,
    "male": MessageLookupByLibrary.simpleMessage("Чоловік"),
    "markAsFavorite": MessageLookupByLibrary.simpleMessage(
      "Позначити як улюблене",
    ),
    "measurementAdded": MessageLookupByLibrary.simpleMessage(
      "Вимірювання успішно додано.",
    ),
    "measurementDeleted": MessageLookupByLibrary.simpleMessage(
      "Вимірювання видалено",
    ),
    "medicationAdded": MessageLookupByLibrary.simpleMessage(
      "Медикамент успішно додано",
    ),
    "medicationDeleted": MessageLookupByLibrary.simpleMessage(
      "Медикамент успішно видалено",
    ),
    "medicationHistory": MessageLookupByLibrary.simpleMessage(
      "Історія медикаментів",
    ),
    "medicationTime": MessageLookupByLibrary.simpleMessage(
      "Час прийому медикаменту",
    ),
    "medicationTracking": MessageLookupByLibrary.simpleMessage(
      "Відстеження медикаментів",
    ),
    "medicationTrackingDescription": MessageLookupByLibrary.simpleMessage(
      "Відстежуйте свої медикаменти, дози та розклади прийому.",
    ),
    "medicationType": MessageLookupByLibrary.simpleMessage("Тип медикаменту"),
    "medicationTypeValidation": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, виберіть тип медикаменту",
    ),
    "metersShort": MessageLookupByLibrary.simpleMessage("м"),
    "milesShort": MessageLookupByLibrary.simpleMessage("ми"),
    "minutesAmount": m18,
    "minutesAmountLong": m19,
    "minutesShort": MessageLookupByLibrary.simpleMessage("хв"),
    "ml": MessageLookupByLibrary.simpleMessage("мл"),
    "monthly": MessageLookupByLibrary.simpleMessage("Щомісяця"),
    "moodGraph": MessageLookupByLibrary.simpleMessage("Графік настрою"),
    "name": MessageLookupByLibrary.simpleMessage("Ім\'я"),
    "nameCantBeEmpty": MessageLookupByLibrary.simpleMessage(
      "Ім\'я не може бути порожнім",
    ),
    "nextStep": MessageLookupByLibrary.simpleMessage("Наступний крок"),
    "no": MessageLookupByLibrary.simpleMessage("Ні"),
    "noBloodSugarMeasurements": MessageLookupByLibrary.simpleMessage(
      "Немає доступних вимірювань рівня цукру в крові.",
    ),
    "noCourses": MessageLookupByLibrary.simpleMessage(
      "Немає доступних курсів лікування.",
    ),
    "noDrugsValidation": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, додайте принаймні один препарат.",
    ),
    "noMeasurements": MessageLookupByLibrary.simpleMessage(
      "Вимірювань не записано.",
    ),
    "noMedications": MessageLookupByLibrary.simpleMessage(
      "Медикаменти не знайдено.",
    ),
    "noNotifications": MessageLookupByLibrary.simpleMessage(
      "Немає встановлених сповіщень.",
    ),
    "noReminders": MessageLookupByLibrary.simpleMessage(
      "Немає доступних нагадувань про тренування.",
    ),
    "noSavedWorkoutsYet": MessageLookupByLibrary.simpleMessage(
      "Ще немає збережених тренувань.",
    ),
    "noSleepDataLastNight": MessageLookupByLibrary.simpleMessage(
      "Даних про сон за останню ніч немає.",
    ),
    "noWaterRecords": MessageLookupByLibrary.simpleMessage(
      "Записів про воду не знайдено.",
    ),
    "notEnoughData": MessageLookupByLibrary.simpleMessage("Недостатньо даних"),
    "noteHeightInCmAndWeightInKg": MessageLookupByLibrary.simpleMessage(
      "Примітка: Зріст в см та вага в кг",
    ),
    "notes": MessageLookupByLibrary.simpleMessage("Нотатки"),
    "notificationAdded": MessageLookupByLibrary.simpleMessage(
      "Сповіщення додано.",
    ),
    "notificationDeleted": MessageLookupByLibrary.simpleMessage(
      "Сповіщення видалено",
    ),
    "once": MessageLookupByLibrary.simpleMessage("Одноразово"),
    "oopsSomethingWentWrong": MessageLookupByLibrary.simpleMessage(
      "Ой! Щось пішло не так.",
    ),
    "orEnterCustom": MessageLookupByLibrary.simpleMessage(
      "Або введіть індивідуальне споживання води",
    ),
    "other": MessageLookupByLibrary.simpleMessage("Інше"),
    "pickDuration": MessageLookupByLibrary.simpleMessage("Виберіть тривалість"),
    "pieces": MessageLookupByLibrary.simpleMessage("штуки"),
    "pleaseEnterDistance": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, введіть відстань",
    ),
    "pleaseSelectAWorkoutType": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, виберіть тип тренування",
    ),
    "profile": MessageLookupByLibrary.simpleMessage("Профіль"),
    "profileUpdateFailed": MessageLookupByLibrary.simpleMessage(
      "Не вдалося оновити профіль.",
    ),
    "profileUpdated": MessageLookupByLibrary.simpleMessage(
      "Профіль успішно оновлено.",
    ),
    "recheckBloodPressure": MessageLookupByLibrary.simpleMessage(
      "Перевірте кров\'яний тиск ще раз",
    ),
    "recheckBloodPressureDesc": MessageLookupByLibrary.simpleMessage(
      "Ваш кров\'яний тиск відхилився від нормального діапазону. Будь ласка, перевірте його знову.",
    ),
    "reminderBody": MessageLookupByLibrary.simpleMessage("Текст нагадування"),
    "reminderBodyOptional": MessageLookupByLibrary.simpleMessage(
      "Текст нагадування (необов\'язково)",
    ),
    "reminderDeleted": MessageLookupByLibrary.simpleMessage(
      "Нагадування успішно видалено",
    ),
    "reminderTitle": MessageLookupByLibrary.simpleMessage("Назва нагадування"),
    "reminderTitleOptional": MessageLookupByLibrary.simpleMessage(
      "Назва нагадування (необов\'язково)",
    ),
    "reminderType": MessageLookupByLibrary.simpleMessage("Тип"),
    "repeatInterval": MessageLookupByLibrary.simpleMessage(
      "Інтервал повторення",
    ),
    "repeatIntervalValidation": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, виберіть інтервал повторення",
    ),
    "running": MessageLookupByLibrary.simpleMessage("Біг"),
    "saveCourse": MessageLookupByLibrary.simpleMessage("Зберегти курс"),
    "saveMeasurement": MessageLookupByLibrary.simpleMessage(
      "Зберегти вимірювання",
    ),
    "saveNotification": MessageLookupByLibrary.simpleMessage(
      "Зберегти сповіщення",
    ),
    "saveProfile": MessageLookupByLibrary.simpleMessage("Зберегти профіль"),
    "saveReminder": MessageLookupByLibrary.simpleMessage(
      "Зберегти нагадування",
    ),
    "saveWaterRecord": MessageLookupByLibrary.simpleMessage(
      "Зберегти запис про воду",
    ),
    "saveWorkout": MessageLookupByLibrary.simpleMessage("Зберегти тренування"),
    "savedWorkouts": MessageLookupByLibrary.simpleMessage(
      "Збережені тренування",
    ),
    "scheduledAt": MessageLookupByLibrary.simpleMessage("Заплановано на"),
    "scheduledTime": MessageLookupByLibrary.simpleMessage("Запланований час"),
    "selectCourseEnd": MessageLookupByLibrary.simpleMessage(
      "Виберіть дату завершення курсу",
    ),
    "selectCourseEndValidation": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, виберіть дату завершення курсу.",
    ),
    "selectCourseStart": MessageLookupByLibrary.simpleMessage(
      "Виберіть дату початку курсу",
    ),
    "selectCourseStartValidation": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, виберіть дату початку курсу.",
    ),
    "selectDate": MessageLookupByLibrary.simpleMessage("Вибрати дату"),
    "selectDateTimeValidation": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, виберіть дату та час або залиште обидва порожніми.",
    ),
    "selectGender": MessageLookupByLibrary.simpleMessage("Виберіть стать"),
    "selectMedicationTime": MessageLookupByLibrary.simpleMessage(
      "Виберіть час прийому медикаменту",
    ),
    "selectMedicationTimeValidation": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, виберіть час прийому медикаменту.",
    ),
    "selectMood": MessageLookupByLibrary.simpleMessage("Виберіть настрій"),
    "selectMoodValidation": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, виберіть настрій.",
    ),
    "selectNight": MessageLookupByLibrary.simpleMessage("Вибрати ніч"),
    "selectThemeColor": MessageLookupByLibrary.simpleMessage(
      "Виберіть колір теми",
    ),
    "selectTime": MessageLookupByLibrary.simpleMessage("Вибрати час"),
    "selectTimeValidation": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, виберіть як дату, так і час.",
    ),
    "selectWorkoutType": MessageLookupByLibrary.simpleMessage(
      "Вибрати тип тренування",
    ),
    "showSleepSegments": MessageLookupByLibrary.simpleMessage(
      "Показати сегменти сну",
    ),
    "sleep": MessageLookupByLibrary.simpleMessage("Сон"),
    "sleepAnalysisDesc": MessageLookupByLibrary.simpleMessage(
      "Сон - це процес, який дозволяє вашому організму відпочити, відновитися та набрати сили.",
    ),
    "sleepAnalysisTitle": MessageLookupByLibrary.simpleMessage("Аналіз сну"),
    "sleepChartOverview": m20,
    "sleepDuration": m21,
    "sleepOverviewTitle": MessageLookupByLibrary.simpleMessage("Огляд сну"),
    "sleepPeriod": m22,
    "sleepScoreAverage": MessageLookupByLibrary.simpleMessage("Середньо"),
    "sleepScoreBad": MessageLookupByLibrary.simpleMessage("Погано"),
    "sleepScoreEmojiAverage": MessageLookupByLibrary.simpleMessage("🙂"),
    "sleepScoreEmojiBad": MessageLookupByLibrary.simpleMessage("😞"),
    "sleepScoreEmojiExcellent": MessageLookupByLibrary.simpleMessage("😄"),
    "sleepScoreEmojiGood": MessageLookupByLibrary.simpleMessage("😊"),
    "sleepScoreEmojiPoor": MessageLookupByLibrary.simpleMessage("😐"),
    "sleepScoreEmojiVeryBad": MessageLookupByLibrary.simpleMessage("😫"),
    "sleepScoreExcellent": MessageLookupByLibrary.simpleMessage("Відмінно"),
    "sleepScoreGood": MessageLookupByLibrary.simpleMessage("Добре"),
    "sleepScoreInfoCalculationContent": MessageLookupByLibrary.simpleMessage(
      "Наш алгоритм розраховує ефективність вашого сну, ділячи час сну (без періодів пробудження) на загальний час, проведений у ліжку. Також він порівнює загальну тривалість сну з ідеальними 8 годинами. Ці два показники усереднюються та масштабуються до значення від 0 до 100, що і дає вашу оцінку сну.",
    ),
    "sleepScoreInfoCalculationTitle": MessageLookupByLibrary.simpleMessage(
      "Як розраховується оцінка сну?",
    ),
    "sleepScoreInfoImportanceContent": MessageLookupByLibrary.simpleMessage(
      "Оцінка сну дає вам швидке уявлення про якість вашого сну. Вища оцінка свідчить про те, що ви отримуєте відновлюючий, якісний сон, що важливо для вашого загального здоров\'я, настрою та щоденної продуктивності. Відстеження оцінки сну з часом може допомогти вам виявити закономірності, скоригувати звички та покращити ваше самопочуття.",
    ),
    "sleepScoreInfoImportanceTitle": MessageLookupByLibrary.simpleMessage(
      "Чому оцінка сну важлива?",
    ),
    "sleepScoreInfoTitle": MessageLookupByLibrary.simpleMessage(
      "Про оцінку сну",
    ),
    "sleepScoreInfoWhatIsContent": MessageLookupByLibrary.simpleMessage(
      "Оцінка сну — це метрика, яка об\'єднує різні аспекти вашого сну, включаючи загальну тривалість сну, ефективність сну (відсоток часу, коли ви дійсно спите, перебуваючи в ліжку) та якість стадій сну. Вона виражається числом від 0 до 100, де вищі значення свідчать про кращу якість сну.",
    ),
    "sleepScoreInfoWhatIsTitle": MessageLookupByLibrary.simpleMessage(
      "Що таке оцінка сну?",
    ),
    "sleepScoreInfoYourScoreContent": m23,
    "sleepScoreInfoYourScoreTitle": MessageLookupByLibrary.simpleMessage(
      "Ваша оцінка сну",
    ),
    "sleepScorePoor": MessageLookupByLibrary.simpleMessage("Незадовільно"),
    "sleepScoreTitle": MessageLookupByLibrary.simpleMessage("Оцінка сну"),
    "sleepScoreVeryBad": MessageLookupByLibrary.simpleMessage("Дуже погано"),
    "sleepSegmentType": m24,
    "sleepSegmentsTitle": MessageLookupByLibrary.simpleMessage("Сегменти сну"),
    "sleepStageAwake": MessageLookupByLibrary.simpleMessage("Пробудження"),
    "sleepStageAwakeInfoContent": MessageLookupByLibrary.simpleMessage(
      "Стадія пробудження представляє періоди, коли ви перебуваєте в ліжку, але не спите. Короткі пробудження є нормальними, але тривалі періоди можуть порушити якість сну.",
    ),
    "sleepStageAwakeInfoTitle": MessageLookupByLibrary.simpleMessage(
      "Стадія пробудження",
    ),
    "sleepStageDeep": MessageLookupByLibrary.simpleMessage("Глибокий"),
    "sleepStageDeepInfoContent": MessageLookupByLibrary.simpleMessage(
      "Глибокий сон – це найбільш відновлююча фаза, важлива для фізичного відновлення та зміцнення імунітету. Адекватна кількість глибокого сну зазвичай забезпечує відчуття свіжості вранці.",
    ),
    "sleepStageDeepInfoTitle": MessageLookupByLibrary.simpleMessage(
      "Глибокий сон",
    ),
    "sleepStageLengthsInfoImportanceContent": MessageLookupByLibrary.simpleMessage(
      "Тривалість кожної стадії сну впливає на те, наскільки добре відновлюються ваше тіло та розум. Збалансований розподіл із достатньою кількістю глибокого та REM-сну є критично важливим для консолідації пам\'яті, фізичного відновлення та загального благополуччя.",
    ),
    "sleepStageLengthsInfoImportanceTitle":
        MessageLookupByLibrary.simpleMessage(
          "Чому важлива тривалість стадій сну?",
        ),
    "sleepStageLengthsInfoInterpretationContent":
        MessageLookupByLibrary.simpleMessage(
          "Більша тривалість глибокого та REM-сну часто свідчить про більш відновлюючий сон, тоді як довгі періоди пробудження або легкого сну можуть вказувати на фрагментований або менш ефективний сон. Знання цих показників допомагає зрозуміти ваші звички сну та визначити напрямки для покращення.",
        ),
    "sleepStageLengthsInfoInterpretationTitle":
        MessageLookupByLibrary.simpleMessage(
          "Як інтерпретувати тривалість стадій сну",
        ),
    "sleepStageLengthsInfoTitle": MessageLookupByLibrary.simpleMessage(
      "Про тривалість стадій сну",
    ),
    "sleepStageLengthsInfoWhatIsContent": MessageLookupByLibrary.simpleMessage(
      "Тривалість стадій сну відноситься до абсолютного часу, який ви проводите в кожній стадії — наприклад, у стані пробудження, легкому, глибокому та REM-сні. Ці значення дають уявлення про архітектуру вашого сну та його якість.",
    ),
    "sleepStageLengthsInfoWhatIsTitle": MessageLookupByLibrary.simpleMessage(
      "Що таке тривалість стадій сну?",
    ),
    "sleepStageLengthsInfoYourStatsContent": m25,
    "sleepStageLengthsInfoYourStatsTitle": MessageLookupByLibrary.simpleMessage(
      "Тривалість ваших стадій сну",
    ),
    "sleepStageLengthsTitle": MessageLookupByLibrary.simpleMessage(
      "Тривалість стадій сну",
    ),
    "sleepStageLight": MessageLookupByLibrary.simpleMessage("Легкий"),
    "sleepStageLightInfoContent": MessageLookupByLibrary.simpleMessage(
      "Легкий сон – це перехідна фаза між станом пробудження та глибшим сном. Він допомагає організму підготуватися до глибокого сну.",
    ),
    "sleepStageLightInfoTitle": MessageLookupByLibrary.simpleMessage(
      "Легкий сон",
    ),
    "sleepStageRem": MessageLookupByLibrary.simpleMessage("REM"),
    "sleepStageRemInfoContent": MessageLookupByLibrary.simpleMessage(
      "REM-сон (сон з швидким рухом очей) – це фаза, коли у вас найбільше снів, а мозок активно працює. Він важливий для емоційної регуляції та консолідації пам\'яті.",
    ),
    "sleepStageRemInfoTitle": MessageLookupByLibrary.simpleMessage("REM-сон"),
    "sleepStatAwake": MessageLookupByLibrary.simpleMessage("Пробудження"),
    "sleepStatDeep": MessageLookupByLibrary.simpleMessage("Глибокий сон"),
    "sleepStatEfficiency": MessageLookupByLibrary.simpleMessage("Ефективність"),
    "sleepStatLight": MessageLookupByLibrary.simpleMessage("Легкий сон"),
    "sleepStatRem": MessageLookupByLibrary.simpleMessage("REM-сон"),
    "sleepStatisticsInfoEfficiencyContent": MessageLookupByLibrary.simpleMessage(
      "Ефективність сну – це співвідношення фактичного часу сну до загального часу, проведеного в ліжку. Висока ефективність свідчить про безперервний та відновлюючий сон.",
    ),
    "sleepStatisticsInfoEfficiencyTitle": MessageLookupByLibrary.simpleMessage(
      "Розуміння ефективності сну",
    ),
    "sleepStatisticsInfoStagesContent": MessageLookupByLibrary.simpleMessage(
      "Ваш сон поділяється на кілька чітко визначених стадій: пробудження, легкий сон, глибокий сон та REM-сон. Кожна з цих стадій відіграє важливу роль у відновленні, консолідації пам\'яті та загальному благополуччі.",
    ),
    "sleepStatisticsInfoStagesTitle": MessageLookupByLibrary.simpleMessage(
      "Розподіл стадій сну",
    ),
    "sleepStatisticsInfoTitle": MessageLookupByLibrary.simpleMessage(
      "Про статистику сну",
    ),
    "sleepStatisticsInfoWhatIsContent": MessageLookupByLibrary.simpleMessage(
      "Статистика сну – це кількісні показники, які дають уявлення про якість та архітектуру вашого сну. Вона включає такі метрики, як ефективність сну, а також відсоток часу, проведеного у різних стадіях сну, таких як легкий, глибокий та REM-сон.",
    ),
    "sleepStatisticsInfoWhatIsTitle": MessageLookupByLibrary.simpleMessage(
      "Що таке статистика сну?",
    ),
    "sleepStatisticsInfoYourStatsContent": m26,
    "sleepStatisticsInfoYourStatsTitle": MessageLookupByLibrary.simpleMessage(
      "Ваша статистика сну",
    ),
    "sleepStatisticsTitle": MessageLookupByLibrary.simpleMessage(
      "Статистика сну",
    ),
    "steps": MessageLookupByLibrary.simpleMessage("Кроки"),
    "stepsTip": MessageLookupByLibrary.simpleMessage(
      "Порада: регулярна ходьба сприяє здоров\'ю серцево-судинної системи, очищує розум і підвищує загальну енергію – навіть маленькі кроки можуть мати велике значення!",
    ),
    "stress": MessageLookupByLibrary.simpleMessage("Стрес"),
    "stressAndMoodPoints": m27,
    "stressAndMoodTracking": MessageLookupByLibrary.simpleMessage(
      "Відстеження стресу та настрою",
    ),
    "stressAndMoodTrackingDesc": MessageLookupByLibrary.simpleMessage(
      "Настрій – це те, як людина відчуває себе через низку думок, реакцій чи емоцій протягом тривалого часу",
    ),
    "stressGraph": MessageLookupByLibrary.simpleMessage("Графік стресу"),
    "surname": MessageLookupByLibrary.simpleMessage("Прізвище"),
    "swimming": MessageLookupByLibrary.simpleMessage("Плавання"),
    "syncData": MessageLookupByLibrary.simpleMessage(
      "Синхронізувати дані в хмару",
    ),
    "syncDataDecs": MessageLookupByLibrary.simpleMessage(
      "Ваші дані будуть синхронізовані в хмару для резервного копіювання та відновлення.",
    ),
    "syrup": MessageLookupByLibrary.simpleMessage("Сироп"),
    "systolic": MessageLookupByLibrary.simpleMessage("Систолічний"),
    "systolicAndDiastolic": m28,
    "systolicShortAmount": m29,
    "tablet": MessageLookupByLibrary.simpleMessage("Таблетка"),
    "tags": MessageLookupByLibrary.simpleMessage("Теги"),
    "tagsCommaSeparated": MessageLookupByLibrary.simpleMessage(
      "Теги (через кому)",
    ),
    "temperature": MessageLookupByLibrary.simpleMessage("Температура"),
    "temperatureMeasurement": MessageLookupByLibrary.simpleMessage(
      "Вимірювання температури",
    ),
    "temperatureMeasurementDescription": MessageLookupByLibrary.simpleMessage(
      "Температура – це вимірювання тепла або холоду тіла",
    ),
    "temperatureReminders": MessageLookupByLibrary.simpleMessage(
      "Нагадування про температуру",
    ),
    "temperatureTracking": MessageLookupByLibrary.simpleMessage(
      "Відстеження температури",
    ),
    "tennis": MessageLookupByLibrary.simpleMessage("Теніс"),
    "theresNotEnoughDataToBuildTheChart": MessageLookupByLibrary.simpleMessage(
      "Недостатньо даних для побудови графіка",
    ),
    "thisProcessMayTakeAFewSeconds": MessageLookupByLibrary.simpleMessage(
      "Цей процес може зайняти кілька секунд.",
    ),
    "timeValidationMessage": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, виберіть час.",
    ),
    "totalSleepExcluding": m30,
    "totalSleepIncluding": m31,
    "trainingEvaluation": MessageLookupByLibrary.simpleMessage(
      "Оцінка тренування",
    ),
    "ukrainian": MessageLookupByLibrary.simpleMessage("Українська"),
    "units": MessageLookupByLibrary.simpleMessage("одиниці"),
    "unknown": MessageLookupByLibrary.simpleMessage("Невідомо"),
    "walking": MessageLookupByLibrary.simpleMessage("Ходьба"),
    "waterAmount": MessageLookupByLibrary.simpleMessage("Кількість води"),
    "waterAmountValidation": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, введіть дійсну кількість води",
    ),
    "waterConsumption": MessageLookupByLibrary.simpleMessage(
      "Споживання води (мл)",
    ),
    "waterRecordAdded": MessageLookupByLibrary.simpleMessage(
      "Запис про воду успішно додано",
    ),
    "waterRecordDeleted": MessageLookupByLibrary.simpleMessage(
      "Запис про воду успішно видалено",
    ),
    "waterReminders": MessageLookupByLibrary.simpleMessage(
      "Нагадування про воду",
    ),
    "waterTip": MessageLookupByLibrary.simpleMessage(
      "Порада: вживання води важливе для вашого здоров\'я. Вона допомагає залишатися зволоженим та підтримувати нормальну температуру тіла.",
    ),
    "waterTracking": MessageLookupByLibrary.simpleMessage("Відстеження води"),
    "waterTrackingDescription": MessageLookupByLibrary.simpleMessage(
      "Вода є необхідною для підтримки об\'єму крові та регулювання температури тіла",
    ),
    "weekly": MessageLookupByLibrary.simpleMessage("Щотижня"),
    "weight": MessageLookupByLibrary.simpleMessage("Вага (кг)"),
    "weightInKg": MessageLookupByLibrary.simpleMessage("Вага (кг)"),
    "weightMustBeLessThan500": MessageLookupByLibrary.simpleMessage(
      "Вага має бути дійсною і меншою за 500 кг",
    ),
    "weightTraining": MessageLookupByLibrary.simpleMessage("Силові тренування"),
    "workoutDetails": MessageLookupByLibrary.simpleMessage("Деталі тренування"),
    "workoutReminderScheduled": MessageLookupByLibrary.simpleMessage(
      "Нагадування про тренування успішно заплановано!",
    ),
    "workoutSaved": MessageLookupByLibrary.simpleMessage(
      "Тренування збережено",
    ),
    "workoutType": MessageLookupByLibrary.simpleMessage("Тип тренування"),
    "workoutTypeValidationMessage": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, виберіть тип тренування.",
    ),
    "workoutsAmount": MessageLookupByLibrary.simpleMessage(
      "Кількість тренувань",
    ),
    "yes": MessageLookupByLibrary.simpleMessage("Так"),
    "youCanNowProceedToTheNextStep": MessageLookupByLibrary.simpleMessage(
      "Ви можете перейти до наступного кроку.",
    ),
    "yourActivities": MessageLookupByLibrary.simpleMessage("Ваші активності"),
    "yourReminders": MessageLookupByLibrary.simpleMessage("Ваші нагадування"),
    "yourWearableDeviceIsConnected": MessageLookupByLibrary.simpleMessage(
      "Ваш носимий пристрій підключено.",
    ),
  };
}

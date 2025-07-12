<a href="https://firebase.google.com/"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Firebase_icon.svg/2048px-Firebase_icon.svg.png" align="right" width="8%"></a>
<a href="https://flutter.dev/"><img src="https://cdn.icon-icons.com/icons2/2107/PNG/512/file_type_flutter_icon_130599.png" align="right" width="8%"></a>
<a href="https://github.com/tortamque/Healthque/releases"><img src="https://github.com/user-attachments/assets/d33b1699-9099-4a25-be96-57e4b36e067e" align="right" width="8%"></a>

# Healthque

## Before you read...
Healthque is my diploma project, a Flutter-based mobile application for real-time tracking of workouts, vital health metrics and medication reminders. Enjoy this comprehensive documentation 👀

## Description
Healthque is a cross-platform Flutter app that lets users log, monitor and visualize workouts and key health parameters (heart rate, blood pressure, glucose, temperature, hydration, stress) while managing medication schedules and reminders. Interactive charts, goal-setting and a personal health journal empower users to maintain an active, healthy lifestyle and make data-driven decisions about their well-being.<br>
Built on Clean Architecture, Healthque combines the Repository pattern, Separation of Concerns, Dependency Injection and the BLoC state-management pattern to deliver modular, maintainable, testable code and an intuitive user experience.<br>

## Table of Contents
- [Used Technologies](#used-technologies)
- [Architecture](#architecture)
- [Features](#features)
- [Data Synchronization](#data-synchronization)
- [Supported platforms](#supported-platforms)
- [Deployment](#deployment)
- [Screenshots and Demo](#screenshots)
- [Changelog](#changelog)
- [Firebase Database](#database)
- [Comparison](#comparison)
- [Diagrams](#diagrams)
- [Used Packages](#used-packages)
- [Versions](#versions)
- [License](#license)

<a name="used-technologies"></a>
## Used Technologies
Healthque uses Firebase Realtime Database for cloud storage and real-time data sync.  
It employs Firebase Authentication (Google Sign-In) for user registration and login.  
Firebase Analytics collects anonymized usage metrics to inform future enhancements.  
Firebase Crashlytics captures and reports runtime errors and crashes in real time.  

For offline data persistence and fast local reads, Healthque uses Hive.  
Health metrics are imported via Google Health Connect on Wear OS (Wear OS → Health Connect → Healthque).  
Push notifications and reminder scheduling are handled with flutter_local_notifications.  

The app supports both English and Ukrainian via Flutter’s `flutter_localizations` and `flutter_localization` packages.

<a name="architecture"/></a>
## Architecture
Healthque fully embraces the Clean Architecture pattern, incorporating Bloc, Repository, Separation of Concerns, and Dependency Injection patterns.</br>
Clean Architecture consists of the following layers: 
1) Data Layer
2) Domain Layer (Business Logic)
3) Presentation Layer (UI) </br></br>

<b>Call Flow Diagram</b>:<br>
<img width="65%" alt="Call Flow Diagram" src="https://github.com/tortamque/Poetlum/assets/90132962/6d2e5a2e-cdc8-4a62-9a6f-ca824da2b00c"><br>

<b>Onion Diagram</b>:<br>
<img width="65%" alt="Onion Diagram" src="https://github.com/tortamque/Poetlum/assets/90132962/75b02676-81c2-4fe0-8372-dc3783ea0849"><br>

<a name="features"></a>
## Features
- Sign in/up with your Google account  
- Onboarding wizard to enter your age, gender, height, weight and daily goals  
- Automatic sync of workouts and health data across devices  
- Offline mode so you can log and view data without an internet connection  
- Workout tracking: add, view, delete and favorite your exercise sessions  
- Vital-sign logging and charts: heart rate, blood pressure, blood glucose, temperature, hydration, stress & mood  
- Sleep analysis: view duration and quality trends over time  
- Medication management: record doses, plan treatment courses and get reminder alerts  
- Push notifications for medication, workout, hydration and wellness reminders  
- Wear OS companion app for glanceable on-wrist charts and summaries  
- Interactive dashboards with charts for steps, calories, distance, sleep and more  
- Customizable color themes to personalize the look and feel  
- Full English and Ukrainian language support  
- Profile settings: update your personal info, goals, language, theme and manually trigger data sync

<a name="data-synchronization"></a>
## Data Synchronization

Healthque leverages **Google Health Connect** as a central hub for seamless data exchange between Wear OS smartwatches and the mobile application. This integration allows for a unified and consistent view of your health data across devices.

Here’s how the data synchronization works:

1.  **Wear OS Data Collection**: Smartwatches running Wear OS collect various health information (e.g., steps, heart rate, sleep, workouts) using their built-in sensors. This data is typically stored by a pre-installed health application on the watch (like Samsung Health).

2.  **Health Connect Integration**: When the Wear OS smartwatch is connected to an Android smartphone, its native health application transfers the collected measurements to Google Health Connect. Health Connect acts as a secure repository and an intermediary, managing permissions and data flow between different health apps on the Android device.

3.  **Healthque Data Access**: Once the user grants permission within their smartphone's Health Connect settings, Healthque can read and write health data through the Health Connect API. This allows Healthque to retrieve detailed information about workouts, vital signs, and sleep patterns, as well as push new data if applicable.

This bidirectional synchronization ensures that all your health-related information is up-to-date and accessible within Healthque, regardless of where it was originally recorded.

Below are diagrams illustrating the data flow:

<img width="509" height="299" alt="image" src="https://github.com/user-attachments/assets/8c3f2b2f-d516-49f4-b124-31526b6216f1" /><br>
*Figure: Synchronization scheme between a Wear OS smartwatch and an Android device.* <br><br>


<img width="521" height="342" alt="image" src="https://github.com/user-attachments/assets/27f49de6-0fe2-400b-8f8b-611091b707dc" /><br>
*Figure: Communication scheme of a third-party application (e.g., Healthque) with a smartwatch via Google Health Connect.*

<a name="supported-platforms"/></a>
## Supported platforms
Healthque is a mobile application that supports <b>Android</b> platform.

<a name="deployment"></a>
## Deployment

To deploy the Healthque app, follow these steps:
1. Ensure the Flutter SDK is installed.
2. Clone the repository and install dependencies:
   ```bash
   git clone https://github.com/yourusername/Healthque.git
   cd Healthque
   flutter pub get
    ```
3. In the Firebase Console, create a new project and add an Android app using your package name (found in ```android/app/src/main/AndroidManifest.xml```).
4. Download the generated ```google-services.json``` and place it into ```android/app/```.
5. Generate firebase_options.dart via FlutterFire CLI
```dart pub global activate flutterfire_cli
flutterfire configure
```
5. Build the release Android App Bundle
```flutter build appbundle --release```


<a name="screenshots"/></a>
## Screenshot
<details>
  <summary>Click here to view a lot of screenshots 👀</summary>

  <img src="https://github.com/user-attachments/assets/0f1dfc25-2197-4acc-9afe-8a1f909f45b5" alt="Screenshot_1" width="200">
  <img src="https://github.com/user-attachments/assets/aec04dd9-4502-43bb-ad7c-16c57c22550d" alt="Screenshot_2" width="200">
  <img src="https://github.com/user-attachments/assets/0557b9b9-b793-4ec5-8513-ebada3d6b3af" alt="Screenshot_3" width="200">
  <img src="https://github.com/user-attachments/assets/40fd3d74-bd0c-4a87-956e-fd2f98cb4d11" alt="Screenshot_4" width="200">
  <img src="https://github.com/user-attachments/assets/b907a508-956e-48cd-ab00-ef897ddefbee" alt="Screenshot_5" width="200">
  <img src="https://github.com/user-attachments/assets/0e177d26-b4fd-42e4-a0b8-c7e5ac5c4e70" alt="Screenshot_6" width="200">
  <img src="https://github.com/user-attachments/assets/fe418e88-b7bf-4903-b411-ffa87909801a" alt="Screenshot_7" width="200">
  <img src="https://github.com/user-attachments/assets/9ddd5801-6f9e-4a7e-8ef4-e69a3ffb7f34" alt="Screenshot_8" width="200">
  <img src="https://github.com/user-attachments/assets/8ee96411-33fd-42b1-824c-3dd53de96639" alt="Screenshot_9" width="200">
  <img src="https://github.com/user-attachments/assets/6df0b658-d466-44ea-b15d-3d4ee97d7b4d" alt="Screenshot_10" width="200">
  <img src="https://github.com/user-attachments/assets/54e891e6-b558-4840-9376-046ad1312fb3" alt="Screenshot_11" width="200">
  <img src="https://github.com/user-attachments/assets/30c767ec-f3ae-4bce-87fb-3b5dce08717f" alt="Screenshot_12" width="200">
  <img src="https://github.com/user-attachments/assets/dc37a7ab-2c4a-484a-9480-db4fc53d64fc" alt="Screenshot_13" width="200">
  <img src="https://github.com/user-attachments/assets/34226194-4237-44b6-84dd-87d0fdeea506" alt="Screenshot_14" width="200">
  <img src="https://github.com/user-attachments/assets/4c7a331d-fa5f-485c-9281-a40c8c5cb5b5" alt="Screenshot_15" width="200">
  <img src="https://github.com/user-attachments/assets/62eab7af-c64c-4a64-985b-9ea78ec8e31f" alt="Screenshot_16" width="200">
  <img src="https://github.com/user-attachments/assets/aff28ac2-3c7a-41b9-9847-5500c87ba106" alt="Screenshot_17" width="200">
  <img src="https://github.com/user-attachments/assets/85c02148-08ef-47fb-8ee7-a186c70047c2" alt="Screenshot_18" width="200">
  <img src="https://github.com/user-attachments/assets/5b9c7f12-7200-41a7-95f8-c2947da455da" alt="Screenshot_19" width="200">
  <img src="https://github.com/user-attachments/assets/61fa251f-44e3-441b-bb27-6ba353d5defc" alt="Screenshot_20" width="200">
  <img src="https://github.com/user-attachments/assets/8199ec22-ac71-426d-b7cd-6848f75a38b8" alt="Screenshot_21" width="200">
  <img src="https://github.com/user-attachments/assets/f26db963-df17-4a48-b719-3e2543880be5" alt="Screenshot_22" width="200">
  <img src="https://github.com/user-attachments/assets/9232993f-5416-4c32-9563-c295dfa727d9" alt="Screenshot_23" width="200">
  <img src="https://github.com/user-attachments/assets/677011c4-f492-4f9b-8045-d5bd7758eefc" alt="Screenshot_24" width="200">
  <img src="https://github.com/user-attachments/assets/3d3eb6fb-7dfe-4855-a49e-a159c10d8df4" alt="Screenshot_25" width="200">
  <img src="https://github.com/user-attachments/assets/a3294f48-4347-4c74-bcf5-2107ec2944ba" alt="Screenshot_26" width="200">
  <img src="https://github.com/user-attachments/assets/052c9f6a-fc48-4ca9-948a-cfcd5e359991" alt="Screenshot_27" width="200">
  <img src="https://github.com/user-attachments/assets/d5ddd03d-4583-40e5-ba09-9d98f6493bd1" alt="Screenshot_28" width="200">
  <img src="https://github.com/user-attachments/assets/c5ee4d18-3c5d-4027-afa9-d298df644746" alt="Screenshot_29" width="200">
  <img src="https://github.com/user-attachments/assets/95703966-303b-4cfe-94f6-edc7a0c4d127" alt="Screenshot_30" width="200">
  <img src="https://github.com/user-attachments/assets/fadbb9b3-8cc3-47cd-afb1-61027a82b0c0" alt="Screenshot_31" width="200">
  <img src="https://github.com/user-attachments/assets/7db9726a-c90d-4838-ae95-62ae7084fb93" alt="Screenshot_32" width="200">
  <img src="https://github.com/user-attachments/assets/ddbefa5a-3cd4-4a83-8a85-e6509f814f28" alt="Screenshot_33" width="200">
  <img src="https://github.com/user-attachments/assets/87dd036d-d336-4db8-9b9b-d511ec5cb1cc" alt="Screenshot_34" width="200">
  <img src="https://github.com/user-attachments/assets/00533639-dbfb-4d45-ac74-21a22d304e73" alt="Screenshot_35" width="200">
  <img src="https://github.com/user-attachments/assets/ffb635d2-42c6-44ff-9660-5d3c1f1f1515" alt="Screenshot_36" width="200">
  <img src="https://github.com/user-attachments/assets/a12e83ac-dbfe-4d8b-810c-9203d079009d" alt="Screenshot_37" width="200">
  <img src="https://github.com/user-attachments/assets/720dbaa6-6cc8-47c9-85fe-35ea1f7bc6f0" alt="Screenshot_38" width="200">
  <img src="https://github.com/user-attachments/assets/9208d916-4b3e-41cf-aa73-31d50b86a805" alt="Screenshot_39" width="200">
  <img src="https://github.com/user-attachments/assets/147fd07e-8a28-495e-ac96-731b26925987" alt="Screenshot_40" width="200">
  <img src="https://github.com/user-attachments/assets/8706a581-04ec-42d3-b195-7e003747ab5a" alt="Screenshot_41" width="200">
  <img src="https://github.com/user-attachments/assets/7e78b7ba-609f-47ef-9414-492ef5cd645d" alt="Screenshot_42" width="200">
  <img src="https://github.com/user-attachments/assets/87cec6c9-7a4b-4e46-917c-154832d58f24" alt="Screenshot_43" width="200">
  <img src="https://github.com/user-attachments/assets/08eee081-9417-448c-871d-2ab0fa6150b2" alt="Screenshot_44" width="200">
  <img src="https://github.com/user-attachments/assets/6df641bb-6a2b-4440-ae41-158cc0cae3b1" alt="Screenshot_45" width="200">
  <img src="https://github.com/user-attachments/assets/35617c77-5bea-48ea-a176-431cf78b7ab9" alt="Screenshot_46" width="200">
  <img src="https://github.com/user-attachments/assets/0d8e1707-ad13-45f0-b263-c7f28aa1bf8c" alt="Screenshot_47" width="200">
  <img src="https://github.com/user-attachments/assets/65b4089e-20ad-454a-a266-683298ad2161" alt="Screenshot_48" width="200">
  <img src="https://github.com/user-attachments/assets/247cff25-f616-4694-aeec-620bb0cbf704" alt="Screenshot_49" width="200">
  <img src="https://github.com/user-attachments/assets/8d581ca1-dcb0-44fc-8a86-844646e74c05" alt="Screenshot_50" width="200">
  <img src="https://github.com/user-attachments/assets/61dbab5f-3176-485a-a793-81f6a867397e" alt="Screenshot_51" width="200">
  <img src="https://github.com/user-attachments/assets/877c27a6-9c1b-468d-ad13-becd7bfd2dac" alt="Screenshot_52" width="200">

</details>

<a name="changelog"/></a>
## Changelog
### [1.0] - 10.05.2025
  #### Added
 - Initial release.

<a name="database"></a>
## Firebase Realtime Database

### Database Schema
- `users` (object)  
  - `{userId}` (object)  
    - `profile` (object)  
      - `age`: integer  
      - `avatarUrl`: string  
      - `weight`: integer  
      - `height`: integer  
      - `gender`: string  
      - `desiredSteps`: integer  
      - `waterConsumption`: integer  
      - `caloriesBurnInOneDay`: integer  
    - `locale` (object)  
      - `locale`: string  
    - `themePreference` (object)  
      - `seedColorValue`: number  
    - `bloodPressureRecords` (object)  
      - `records`: array of objects  
        - each object:  
          - `id`: integer  
          - `systolic`: integer  
          - `diastolic`: integer  
          - `measurementTime`: string (ISO-8601)  
    - `bloodSugarRecords` (object)  
      - `records`: array of objects  
        - each object:  
          - `id`: integer  
          - `glucose`: integer  
          - `measurementTime`: string (ISO-8601)  
    - `stressMoodRecords` (object)  
      - `records`: array of objects  
        - each object:  
          - `id`: integer  
          - `stress`: integer  
          - `mood`: integer  
          - `measurementTime`: string (ISO-8601)  
    - `temperatureRecords` (object)  
      - `records`: array of objects  
        - each object:  
          - `id`: integer  
          - `temperature`: float  
          - `measurementTime`: string (ISO-8601)  
    - `waterRecords` (object)  
      - `records`: array of objects  
        - each object:  
          - `id`: integer  
          - `amount`: float  
          - `datetime`: string (ISO-8601)  
    - `workouts` (object)  
      - `workouts`: array of objects  
        - each object:  
          - `createdAt`: string (ISO-8601)  
          - `workoutType`: string  
          - `durationMinutes`: integer  
          - `intensity`: integer  
          - `isFavorite`: boolean  
          - `moodRating`: integer  
          - `distance`: float (optional)  
          - `tags`: array[string] (optional)  
          - `notes`: string (optional)  
    - `medications` (object)  
      - `medications`: array of objects  
        - each object:  
          - `id`: integer  
          - `course`: string  
          - `createdAt`: string (ISO-8601)  
          - `type`: string  
          - `dosage`: string  
          - `notes`: string  
    - `courseTreatments` (object)  
      - `courses`: array of objects  
        - each object:  
          - `id`: integer  
          - `courseStart`: string (ISO-8601)  
          - `courseEnd`: string (ISO-8601)  
          - `medicationTime`: string (ISO-8601)  
          - `repeatInterval`: string  
          - `entries`: array of objects  
            - each entry:  
              - `name`: string  
              - `dosage`: string  
              - `medicationType`: string  
              - `notes`: string  
    - `notifications` (object)  
      - `notifications`: array of objects  
        - each object:  
          - `id`: integer  
          - `title`: string  
          - `body`: string  
          - `scheduledDate`: string (ISO-8601)  
          - `type`: string

<a name="comparison"></a>
## Comparison with Analogues

This table provides a comparative analysis of Healthque with similar applications, highlighting key features and distinctions.

| Feature  | Healthque | [Samsung Health](https://play.google.com/store/apps/details?id=com.sec.android.app.shealth) | [TakeYourPills](https://play.google.com/store/apps/details?id=com.bestfuncoolapps.TakeYourPills) | [Guava](https://play.google.com/store/apps/details?id=com.guavahealth.app) |
|----------------------------|-----------|--------------------|---------------|-------|
| User Registration & Login         | Yes       | Yes                | No            | Yes   |
| Advertisements             | No        | No                 | Yes           | No    |
| Cloud Data Storage         | Yes       | Yes                | No            | Yes   |
| Medication Tracking        | Yes       | No                 | Yes           | No    |
| Health Status Monitoring   | Yes       | Yes                | No            | Yes   |
| Paid Subscription / Content| No        | No                 | Yes           | Yes   |
| Wear OS Smartwatch Sync    | Yes       | Yes (Samsung only) | No            | No    |
| Dedicated Smartwatch App   | Yes       | Yes (Samsung only) | No            | No    |

<a name="diagrams"/></a>
## Diagrams
### Usecase Diagram
<img src="https://github.com/user-attachments/assets/9a7957fb-0593-47b2-962e-1604cee2b310" alt="Usecase" width="700">


### Sequence Diagram
<img src="https://github.com/user-attachments/assets/5d2742a4-cd70-47a5-b7fb-dc44e9250d35" alt="Sequence" width="700">

<a name="used-packages"/></a>
## Used Packages
The Healthque app utilizes the following packages:
| Name                        | Version        | Link on pub.dev                                            |
|-----------------------------|----------------|------------------------------------------------------------|
| firebase_core               | 3.12.1         | [Link](https://pub.dev/packages/firebase_core)             |
| google_sign_in              | 6.3.0          | [Link](https://pub.dev/packages/google_sign_in)            |
| firebase_auth               | 5.5.1          | [Link](https://pub.dev/packages/firebase_auth)             |
| flutter_bloc                | 9.1.0          | [Link](https://pub.dev/packages/flutter_bloc)              |
| freezed_annotation          | 3.0.0          | [Link](https://pub.dev/packages/freezed_annotation)        |
| freezed                     | 3.0.4          | [Link](https://pub.dev/packages/freezed)                   |
| intl_utils                  | 2.8.10         | [Link](https://pub.dev/packages/intl_utils)                |
| intl                        | 0.19.0         | [Link](https://pub.dev/packages/intl)                      |
| go_router                   | 14.8.1         | [Link](https://pub.dev/packages/go_router)                 |
| google_nav_bar              | 5.0.7          | [Link](https://pub.dev/packages/google_nav_bar)            |
| dio                         | 5.8.0+1        | [Link](https://pub.dev/packages/dio)                       |
| get_it                      | 8.0.3          | [Link](https://pub.dev/packages/get_it)                    |
| gap                         | 3.0.1          | [Link](https://pub.dev/packages/gap)                       |
| syncfusion_flutter_sliders  | 28.2.12        | [Link](https://pub.dev/packages/syncfusion_flutter_sliders)|
| health                      | 12.1.0         | [Link](https://pub.dev/packages/health)                    |
| permission_handler          | 11.4.0         | [Link](https://pub.dev/packages/permission_handler)        |
| shared_preferences          | 2.5.2          | [Link](https://pub.dev/packages/shared_preferences)        |
| fl_chart                    | 0.70.2         | [Link](https://pub.dev/packages/fl_chart)                  |
| flutter_localization        | 0.3.1          | [Link](https://pub.dev/packages/flutter_localization)      |
| hive                        | 2.2.3          | [Link](https://pub.dev/packages/hive)                      |
| hive_flutter                | 1.1.0          | [Link](https://pub.dev/packages/hive_flutter)              |
| hive_generator              | 2.0.1          | [Link](https://pub.dev/packages/hive_generator)            |
| path_provider               | 2.1.5          | [Link](https://pub.dev/packages/path_provider)             |
| duration_picker             | 1.2.0          | [Link](https://pub.dev/packages/duration_picker)           |
| toastification              | 3.0.2          | [Link](https://pub.dev/packages/toastification)            |
| flutter_local_notifications | 18.0.1         | [Link](https://pub.dev/packages/flutter_local_notifications) |
| timezone                    | 0.10.0         | [Link](https://pub.dev/packages/timezone)                  |
| firebase_database           | 11.3.5         | [Link](https://pub.dev/packages/firebase_database)         |
| firebase_analytics          | 11.4.5         | [Link](https://pub.dev/packages/firebase_analytics)        |
| firebase_crashlytics        | 4.3.5          | [Link](https://pub.dev/packages/firebase_crashlytics)      |

<a name="versions"></a>
## Flutter & Dart Versions

- Flutter 3.29.3  
- Dart 3.7.2

<a name="licenses"/></a>
## License
Apache License Version 2.0

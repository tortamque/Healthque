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

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "enterYourName": MessageLookupByLibrary.simpleMessage("Enter your name"),
    "enterYourSurname": MessageLookupByLibrary.simpleMessage(
      "Enter your surname",
    ),
    "enterYourSurnameOptional": MessageLookupByLibrary.simpleMessage(
      "Enter your surname (Optional)",
    ),
    "firstThingsFirst": MessageLookupByLibrary.simpleMessage(
      "First things first!",
    ),
    "letsCreateAccount": MessageLookupByLibrary.simpleMessage(
      "Let\'s create account together!",
    ),
    "letsGetToKnowEachOther": MessageLookupByLibrary.simpleMessage(
      "Let\'s get to know each other",
    ),
    "logInWithGoogle": MessageLookupByLibrary.simpleMessage(
      "Log in with Google",
    ),
    "name": MessageLookupByLibrary.simpleMessage("Name"),
    "nameCantBeEmpty": MessageLookupByLibrary.simpleMessage(
      "Name can\'t be empty",
    ),
    "nextStep": MessageLookupByLibrary.simpleMessage("Next Step"),
    "surname": MessageLookupByLibrary.simpleMessage("Surname"),
  };
}

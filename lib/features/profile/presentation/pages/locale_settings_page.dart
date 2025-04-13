import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/localization/generated/l10n.dart';
import 'package:healthque/core/shared/shared.dart';

class LanguageSettingsPage extends StatelessWidget {
  const LanguageSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, Locale>(
      builder: (context, state) {
        final currentLocale = state;
        final supportedLocales = Strings.delegate.supportedLocales;

        return Scaffold(
          appBar: AppBar(
            title: Text(context.strings.changeLanguage),
          ),
          body: ListView.builder(
            itemCount: supportedLocales.length,
            itemBuilder: (context, index) {
              final locale = supportedLocales[index];
              return RadioListTile<Locale>(
                value: locale,
                groupValue: currentLocale,
                title: Text(_getLanguageName(locale, context)),
                onChanged: (newLocale) {
                  if (newLocale != null) {
                    context.read<LocaleCubit>().changeLocale(newLocale);
                  }
                },
              );
            },
          ),
        );
      },
    );
  }

  String _getLanguageName(Locale locale, BuildContext context) {
    switch (locale.languageCode) {
      case 'en':
        return context.strings.english;
      case 'uk':
        return context.strings.ukrainian;
      default:
        return locale.languageCode;
    }
  }
}

import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = Locale('en'); // Default locale

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (!['en', 'ne'].contains(locale.languageCode)) return; // Supported locales
    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    _locale = Locale('en'); // Reset to default
    notifyListeners();
  }
}
